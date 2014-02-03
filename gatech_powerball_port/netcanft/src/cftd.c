/* -*- mode: C; c-basic-offset: 4 -*- */
/* ex: set shiftwidth=4 tabstop=4 expandtab: */
/*
 * Copyright (c) 2010-2013, Georgia Tech Research Corporation
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
#include <amino.h>
#include <unistd.h>
#include <syslog.h>
#include <sns.h>
#include "netcanft.h"

// Option Vars
const char *opt_chan_name = "ft";
const char *opt_chanbias_name = "ft-bias";
const char *opt_api = "socketcan";
const char *opt_iface = "can0";
int opt_net = 0;
int opt_base_id = 0x20;
int opt_kalman = 0;
double opt_diag_P = 1;
double opt_diag_W = 10;
double opt_diag_V = 1;

double opt_freq = 1000; /* hertz */

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
        .name = "chan-bias",
        .key = 'b',
        .arg = "ach channel",
        .flags = 0,
        .doc = "ach channel to receive bias vectors"
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
        .key = 'W',
        .arg = "double",
        .flags = 0,
        .doc = "diagonal values of W"
    },
    {
        .name = "process-noise",
        .key = 'V',
        .arg = "double",
        .flags = 0,
        .doc = "diagonal values of V"
    },
    {
        .name = "covariance",
        .key = 'P',
        .arg = "double",
        .flags = 0,
        .doc = "diagonal values of P"
    },
    {
        .name = "interface",
        .key = 'f',
        .arg = "IFACE",
        .flags = 0,
        .doc = "CAN interface"
    },
    {
        .name = "frequency",
        .key = 'F',
        .arg = "HERTZ",
        .flags = 0,
        .doc = "Sample Frequency"
    },
    {
        .name = "api",
        .key = 'a',
        .arg = "API",
        .flags = 0,
        .doc = "CAN API"
    },
    {
        .name = "id",
        .key = 'n',
        .arg = "BASE-ID",
        .flags = 0,
        .doc = "Device base ID, hex (7-bit)"
    },
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
    (void)state;
    switch(key) {
        SNS_OPTCASES
    case 'k':
        opt_kalman++;
        break;
    case 'P':
        opt_diag_P = sns_parse_float(arg);
        break;
    case 'W':
        opt_diag_W = sns_parse_float(arg);
        break;
    case 'V':
        opt_diag_V = sns_parse_float(arg);
        break;
    case 'f':
        opt_iface = arg;
        break;
    case 'a':
        opt_api = arg;
        break;
    case 'n':
        opt_base_id = (int)sns_parse_uhex(arg, 0x7F);
        break;
    case 'F':
        opt_freq = sns_parse_float(arg);
        break;
    case 'c':
        if( strlen(arg) > ACH_CHAN_NAME_MAX ) {
            fprintf(stderr, "ERROR: channel is too long\n");
            exit(1);
        }else {
            opt_chan_name = strdup( arg );
        }
        break;
    case 'b':
        if( strlen(arg) > ACH_CHAN_NAME_MAX ) {
            fprintf(stderr, "ERROR: channel is too long\n");
            exit(1);
        }else {
            opt_chanbias_name = strdup( arg );
        }
        break;
    case 0:
        break;
    }


    return 0;
}

/* ------------- */
/* Program Code  */
/* ------------- */


// globals
ach_channel_t ftd_chan;
ach_channel_t ftd_chanbias;
lwa4_ft_t ftd_ft;
//filter_kalman_simple_t ftd_kf;

void init() {
    ftd_ft.base_id = (uint8_t)opt_base_id;

    ftd_ft.cif = canmat_iface_new( opt_api );
    SNS_REQUIRE( ftd_ft.cif, "Couldn't create interface of type: %s\n", opt_api );

    canmat_status_t r =  canmat_iface_open( ftd_ft.cif, opt_iface);
    SNS_REQUIRE( CANMAT_OK == r, "Couldn't open: %s, %s\n",
                 opt_iface, canmat_iface_strerror( ftd_ft.cif, r ) );

    SNS_LOG( LOG_INFO, "Opened interface %s, type %s\n", opt_iface, opt_api );



    // open sensor
    r = lwa4_ft_open( &ftd_ft );
    if( 0 != r ) {
        fprintf(stderr, "Couldn't open ft\n");
        exit(r);
    }
    SNS_LOG( LOG_DEBUG, "FT Serial: %s\n", ftd_ft.serial );

    // set bias
    {
        double x0[6] = {0};
        lwa4_ft_bias(&ftd_ft, x0);
    }

    // init filter
    aa_la_diag( 6, ftd_ft.lqg.P, opt_diag_P );
    aa_la_diag( 6, ftd_ft.lqg.W, opt_diag_W );
    aa_la_diag( 6, ftd_ft.lqg.V, opt_diag_V );

    SNS_LOG( LOG_DEBUG, "FT firmware version: %d.%d.%d\n",
             ftd_ft.firmware_version[0],
             ftd_ft.firmware_version[1],
             ftd_ft.firmware_version[2] );

    SNS_LOG( LOG_DEBUG, "P: %f\n", opt_diag_P );
    SNS_LOG( LOG_DEBUG, "W: %f\n", opt_diag_W );
    SNS_LOG( LOG_DEBUG, "V: %f\n", opt_diag_V );


    SNS_LOG( LOG_DEBUG, "units: %d, %d\n", ftd_ft.units[0], ftd_ft.units[1] );

    // ach
    sns_chan_open( &ftd_chan, opt_chan_name, NULL );
    sns_chan_open( &ftd_chanbias, opt_chanbias_name, NULL );


    /* // filter */
    /* filter_kalman_simple_init( &ftd_kf, 6, 0 ); */
    /* aa_fset( ftd_kf.E, opt_diag_E, 6 ); */
    /* aa_fset( ftd_kf.Q, opt_diag_Q, 6 ); */
    /* aa_fset( ftd_kf.R, opt_diag_R, 6 ); */
    /* lwa4_ft_read( &ftd_ft, ftd_kf.x ); */
}

void destroy() {
    {
        int r;
        r =  lwa4_ft_close( &ftd_ft );
        if( 0 != r ) {
            fprintf(stderr, "Couldn't close ft\n");
        }
    }
    {
        enum ach_status r = ach_close(&ftd_chan);
        if( ACH_OK != r ) {
            fprintf(stderr, "Couldn't close ach channel: %s\n",
                    ach_result_to_string(r) );
        }
    }
    sns_end();
}

int reset_bias() {
    size_t frame_size;
    void *buf = NULL;
    ach_status_t r = sns_msg_local_get( &ftd_chanbias, &buf,
                                        &frame_size,
                                        NULL, ACH_O_LAST  );
    switch(r) {
    case ACH_OK:
    case ACH_MISSED_FRAME:
    {
        SNS_LOG(LOG_NOTICE, "Rebiasing F/T\n");
        struct sns_msg_vector *msg = (struct sns_msg_vector*)buf;
        // TODO: better validation
        if( 6 == msg->header.n &&
            frame_size == sns_msg_vector_size_n(6) )
        {
            lwa4_ft_bias( &ftd_ft, msg->x );
            return 1;
        } else {
            SNS_LOG(LOG_ERR, "Invalid F/T message\n");
        }
        break;
    }
    case ACH_TIMEOUT:
    case ACH_STALE_FRAMES:
        break;
    default:
        SNS_LOG(LOG_ERR, "Failed ach_get: %s\n", ach_result_to_string(r) );
    }
    return 0;
}

void run() {
    /* init message */
    size_t n_msg = sns_msg_vector_size_n(6);
    struct sns_msg_vector *msg = (struct sns_msg_vector*) alloca(n_msg);
    msg->header.n = 6;
    sns_msg_header_fill(&msg->header);

    int64_t period_ns = (int64_t) (1/opt_freq * 1e9);
    struct timespec wakeup;

    sns_start();
    clock_gettime( ACH_DEFAULT_CLOCK, &wakeup );

    while( !sns_cx.shutdown ) {
        aa_mem_region_local_release();
        /* get data */
        {
            canmat_status_t r = lwa4_ft_read( &ftd_ft,  msg->x );
            if( CANMAT_OK != r ) continue;
        }
        struct timespec t_actual;
        clock_gettime( ACH_DEFAULT_CLOCK, &t_actual );

        lwa4_ft_filter( &ftd_ft, msg->x );
        sns_msg_set_time( &msg->header, &t_actual, 2*period_ns );

        /* send message */
        ach_status_t r = ach_put( &ftd_chan, msg, n_msg );
        if( ACH_OK != r ) {
            SNS_LOG( LOG_ERR, "Couldn't send ach frame: %s\n", ach_result_to_string(r) );
        }

        SNS_LOG( LOG_DEBUG+1, "FT:\t %6.2f\t%6.2f\t%6.2f\t%6.2f\t%6.2f\t%6.2f\n",
                 msg->x[0], msg->x[1], msg->x[2], msg->x[3], msg->x[4], msg->x[5] );

        if( reset_bias() ) {
            /* reset_bias takes some time */
            clock_gettime( ACH_DEFAULT_CLOCK, &wakeup );
            continue;
        }

        wakeup = sns_time_add_ns(wakeup, period_ns);
        if( aa_tm_cmp( t_actual, wakeup ) > 0 ) {
            SNS_LOG( LOG_NOTICE, "Missed deadline by %"PRId64" us\n",
                     aa_tm_timespec2usec( aa_tm_sub(t_actual, wakeup) ) );
            wakeup = t_actual;
            continue;
        } else {
            errno = 0;
            while( clock_nanosleep( ACH_DEFAULT_CLOCK, TIMER_ABSTIME, &wakeup, NULL ) &&
                   EINTR == errno &&
                   !sns_cx.shutdown ); /* nop */
        }
    }
}

int main( int argc, char **argv ) {
    sns_init();

    // default options

    // parse options
    argp_parse (&argp, argc, argv, 0, NULL, NULL);


    //somatic_verbprintf( 1, "Net: %d\n", opt_net );
    //somatic_verbprintf( 1, "Base Id: 0x%x\n", opt_base_id );
    //somatic_verbprintf( 1, "channel: %s\n", opt_chan_name );


    // execute program
    init();
    run();
    destroy();

    return 0;
}
