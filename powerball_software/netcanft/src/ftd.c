/* -*- mode: C; c-basic-offset: 4 -*- */
/* ex: set shiftwidth=4 tabstop=4 expandtab: */
/*
 * Copyright (c) 2010-2011, Georgia Tech Research Corporation
 * All rights reserved.
 *
 * Author(s): Neil T. Dantam <ntd@gatech.edu>
 * Georgia Tech Humanoid Robotics Lab
 * Under Direction of Prof. Mike Stilman <mstilman@cc.gatech.edu>
 *
 *
 * This file is provided under the following "BSD-style" License:
 *
 *
 *   Redistribution and use in source and binary forms, with or
 *   without modification, are permitted provided that the following
 *   conditions are met:
 *
 *   * Redistributions of source code must retain the above copyright
 *     notice, this list of conditions and the following disclaimer.
 *
 *   * Redistributions in binary form must reproduce the above
 *     copyright notice, this list of conditions and the following
 *     disclaimer in the documentation and/or other materials provided
 *     with the distribution.
 *
 *   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
 *   CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
 *   INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
 *   MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 *   DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
 *   CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 *   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
 *   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
 *   USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 *   AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 *   LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 *   ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *   POSSIBILITY OF SUCH DAMAGE.
 *
 */

#include <argp.h>
#include <somatic.h>
#include <ntcan.h>
#include <ntcanopen.h>
#include <filter.h>
#include <amino.h>
#include <unistd.h>
#include <somatic/daemon.h>
#include "netcanft.h"

// TODO: it may be better to run the kalman filter on the strain-guage
// readings rather than the computed force measurements

typedef struct {
    somatic_d_t d;
    somatic_d_opts_t d_opts;
} cx_t;

// Option Vars
const char *opt_chan_name = "ft";
int opt_net = 0;
int opt_baud = 250;
int opt_base_id = 0x20;
int opt_kalman = 0;
double opt_diag_E = 1;
double opt_diag_Q = 10;
double opt_diag_R = 1;

/* ---------- */
/* ARGP Junk  */
/* ---------- */

static struct argp_option options[] = {
    {
        .name = "verbose",
        .key = 'v',
        .arg = NULL,
        .flags = 0,
        .doc = "Causes verbose output"
    },
    {
        .name = "chan",
        .key = 'c',
        .arg = "ach channel",
        .flags = 0,
        .doc = "ach channel to send data to"
    },
    {
        .name = "kalman",
        .key = 'k',
        .arg = NULL,
        .flags = 0,
        .doc = "use the kalman filter"
    },
    {
        .name = "measurement-noise",
        .key = 'Q',
        .arg = "double",
        .flags = 0,
        .doc = "diagonal values of Q"
    },
    {
        .name = "process-noise",
        .key = 'R',
        .arg = "double",
        .flags = 0,
        .doc = "diagonal values of R"
    },
    {
        .name = "covariance",
        .key = 'E',
        .arg = "double",
        .flags = 0,
        .doc = "diagonal values of E"
    },
    {
        .name = "bus",
        .key = 'b',
        .arg = "CAN bus",
        .flags = 0,
        .doc = "CAN bus number"
    },
    {
        .name = "baud",
        .key = 'B',
        .arg = "baud (kbits)",
        .flags = 0,
        .doc = "CAN bus number"
    },
    SOMATIC_D_ARGP_OPTS,
    {
        .name = NULL,
        .key = 0,
        .arg = NULL,
        .flags = 0,
        .doc = NULL
    }
};


/// argp parsing function
static int parse_opt( int key, char *arg, struct argp_state *state);
/// argp program version
const char *argp_program_version = "ftd 0.0";
/// argp program arguments documention
static char args_doc[] = "";
/// argp program doc line
static char doc[] = "Talks to NETCANOEM sensor";
/// argp object
static struct argp argp = {options, parse_opt, args_doc, doc, NULL, NULL, NULL };


static int parse_opt( int key, char *arg, struct argp_state *state) {
    cx_t *cx = (cx_t*)state->input;
    int r;
    switch(key) {
    case 'v':
        somatic_opt_verbosity++;
        break;
    case 'k':
        opt_kalman++;
        break;
    case 'E':
        r = sscanf(arg, "%lf", &opt_diag_E );
        somatic_hard_assert( 1 == r, "Couldn't parse arg: %s\n", arg );
        break;
    case 'Q':
        r = sscanf(arg, "%lf", &opt_diag_Q );
        somatic_hard_assert( 1 == r, "Couldn't parse arg: %s\n", arg );
        break;
    case 'R':
        r = sscanf(arg, "%lf", &opt_diag_R );
        somatic_hard_assert( 1 == r, "Couldn't parse arg: %s\n", arg );
        break;
    case 'b':
        r = sscanf(arg, "%d", &opt_net );
        somatic_hard_assert( 1 == r, "Couldn't parse arg: %s\n", arg );
        break;
    case 'B':
        r = sscanf(arg, "%d", &opt_baud );
        somatic_hard_assert( 1 == r, "Couldn't parse arg: %s\n", arg );
        break;
    case 'c':
        if( strlen(arg) > ACH_CHAN_NAME_MAX ) {
            fprintf(stderr, "ERROR: channel is too long\n");
            exit(1);
        }else {
            opt_chan_name = strdup( arg );
        }
        break;
    case 0:
        break;
    }

    somatic_d_argp_parse( key, arg, &cx->d_opts );

    return 0;
}

/* ------------- */
/* Program Code  */
/* ------------- */


// globals
ach_channel_t ftd_chan;
Somatic__ForceMoment *ftd_msg;
lwa4_ft_t ftd_ft;
filter_kalman_simple_t ftd_kf;

void init() {
    int r;

    ftd_ft.kbps = opt_baud;
    ftd_ft.base_id = opt_base_id;
    ftd_ft.net = opt_net;

    // open sensor
    r = lwa4_ft_open( &ftd_ft );
    if( 0 != r ) {
        fprintf(stderr, "Couldn't open ft: %s\n",
                canResultString(r));
        exit(r);
    }
    somatic_verbprintf( 1, "FT Serial: %s\n", ftd_ft.serial );

    // Read in the first f/t value as the bias
    lwa4_ft_bias(&ftd_ft);

    // ach
    r = ach_open( &ftd_chan, opt_chan_name, NULL );
    if( ACH_OK != r ) {
        fprintf(stderr, "Couldn't open ach channel: %s\n",
                ach_result_to_string(r) );
        exit(r);
    }

    // somatic
    ftd_msg = somatic_force_moment_alloc(1,1);
    ftd_msg->meta = somatic_metadata_alloc();
    ftd_msg->meta->type = SOMATIC__MSG_TYPE__FORCE_MOMENT;
    ftd_msg->meta->has_type = 1;

    // filter
    filter_kalman_simple_init( &ftd_kf, 6, 0 );
    aa_fset( ftd_kf.E, opt_diag_E, 6 );
    aa_fset( ftd_kf.Q, opt_diag_Q, 6 );
    aa_fset( ftd_kf.R, opt_diag_R, 6 );
    lwa4_ft_read( &ftd_ft, ftd_kf.x );
}

void destroy() {
    int r;
    r =  lwa4_ft_close( &ftd_ft );
    if( 0 != r ) {
        fprintf(stderr, "Couldn't close ft\n");
    }
    r = ach_close(&ftd_chan);
    if( ACH_OK != r ) {
        fprintf(stderr, "Couldn't close ach channel: %s\n",
                ach_result_to_string(r) );
    }
    somatic_force_moment_free(ftd_msg);
    filter_kalman_simple_destroy( &ftd_kf );
}

void run(cx_t *cx) {
    somatic_d_event( &cx->d, SOMATIC__EVENT__PRIORITIES__NOTICE,
                     SOMATIC__EVENT__CODES__PROC_RUNNING,
                     NULL, NULL );
    double *x = ftd_kf.z;
    while( !somatic_sig_received ) {

        // filter predict
        if( opt_kalman ) filter_kalman_simple_predict( &ftd_kf );

        // get data
        lwa4_ft_read( &ftd_ft, x );
        somatic_verbprintf( 2, "FT:\t %6.2f\t%6.2f\t%6.2f\t%6.2f\t%6.2f\t%6.2f\n",
                            x[0], x[1], x[2], x[3], x[4], x[5] );

        // fill message
        if ( opt_kalman ) {
            filter_kalman_simple_correct( &ftd_kf );
            somatic_force_moment_set(ftd_msg, ftd_kf.x);
        } else {
            somatic_force_moment_set(ftd_msg, x);
        }
        somatic_metadata_set_time_now(ftd_msg->meta );
        somatic_metadata_set_until_duration( ftd_msg->meta, .1 );

        // send message
        int r = SOMATIC_PACK_SEND( &ftd_chan, somatic__force_moment, ftd_msg );
        if( ACH_OK != r ) {
            fprintf(stderr, "Couldn't send message: %s\n",
                    ach_result_to_string(r) );
        }
        //usleep( 1000000 * .1);
    }
    somatic_d_event( &cx->d, SOMATIC__EVENT__PRIORITIES__NOTICE,
                     SOMATIC__EVENT__CODES__PROC_STOPPING,
                     NULL, NULL );
}

int main( int argc, char **argv ) {

    static cx_t cx;
    memset(&cx, 0, sizeof(cx));
    // default options
    cx.d_opts.ident = "ftd";
    cx.d_opts.sched_rt = SOMATIC_D_SCHED_MOTOR;

    // parse options
    argp_parse (&argp, argc, argv, 0, NULL, &cx);
    somatic_d_init(&cx.d, &cx.d_opts);

    somatic_verbprintf_prefix = "ft4";

    somatic_verbprintf( 1, "Net: %d\n", opt_net );
    somatic_verbprintf( 1, "Baud: %d kbps\n", opt_baud );
    somatic_verbprintf( 1, "Base Id: 0x%x\n", opt_base_id );
    somatic_verbprintf( 1, "channel: %s\n", opt_chan_name );


    // execute program
    init();
    run(&cx);
    destroy();

    somatic_d_destroy(&cx.d);

    return 0;

}

