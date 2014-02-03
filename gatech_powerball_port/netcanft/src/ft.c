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

#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>
#include <amino.h>
#include "netcanft.h"

static const char *canResultString(int r) {
    (void)r;
    return "?";
}


// TODO: x = (A*P/1e6 * raw) - (A/1e6 * bias)
static const double permute[6*6] = {1, 0, 0, 0, 0, 0,  // r0 -> p0
                                    0, 0, 1, 0, 0, 0,  // r1 -> p2
                                    0, 0, 0, 0, 1, 0,  // r2 -> p4
                                    0, 1, 0, 0, 0, 0,  // r3 -> p1
                                    0, 0, 0, 1, 0, 0,  // r4 -> p3
                                    0, 0, 0, 0, 0, 1}; // r5 -> p5

enum canmat_status send_recv( lwa4_ft_t *ft, struct can_frame *send_msg, const canid_t *recv_id,
                              struct can_frame *recv_msg, size_t n) {
    //somatic_verbprintf(3, "Sending CMSG: 0x%x\n", send_msg->id);
    enum canmat_status r ;
    // send
    r = canmat_iface_send( ft->cif, send_msg );
    if( CANMAT_OK != r ) return r;

    // recv
    size_t n_recvd = 0;
    int recv_id_mark[n];
    memcpy( recv_id_mark, recv_id, sizeof(recv_id_mark) );
    while( n_recvd < n ) {
        // get msg
        struct can_frame tmp_msg;
        r = canmat_iface_recv( ft->cif, &tmp_msg );
        if( CANMAT_OK != r )  return r;
        // check id
        for( size_t i = 0; i < n; i ++ ) {
            if( recv_id_mark[i] == (int)tmp_msg.can_id ) {
                n_recvd++;
                recv_id_mark[i] = -1;
                memcpy(&recv_msg[i], &tmp_msg, sizeof(tmp_msg));
                break;
            }
        }
        /* Ignore other messages */
    }
    assert( n_recvd == n );
    return CANMAT_OK;
}

canmat_status_t lwa4_ft_open( lwa4_ft_t *ft ) {
    //somatic_verbprintf(2, "BAUD Set\n");
    // bind ids
    /* static int bind_codes[] = {0, 1, 2, 3, 4, 5, 6, 8, 0xD, 0xE, 0xF}; */
    /* for( size_t i = 0; i < sizeof(bind_codes)/sizeof(int); i++) { */
    /*     r = canIdAdd( ft->canbus, lwa4_ft_canid(ft->base_id, bind_codes[i]) ); */
    /*     if( NTCAN_SUCCESS != r ) { */
    /*         fprintf(stderr, "Error binding id %d: %s\n", r, canResultString(r)); */
    /*         return -1; */
    /*     } */
    /* } */


    // set filter
    {
        struct can_filter filt;
        filt.can_id = lwa4_ft_canid(ft->base_id, 0);
        filt.can_mask = 0xFF0;
        canmat_status_t r = canmat_iface_filter( ft->cif, &filt, 1 );
        if( CANMAT_OK != r ) {
            fprintf(stderr, "Couldn't set filter: %s\n", canmat_iface_strerror(ft->cif,r) );
        }

    }

    //somatic_verbprintf(2, "IDs bound\n");
    // read serial number
    {
        struct can_frame msg, rmsg;
        canid_t rid = lwa4_ft_canid( ft->base_id, LWA4_FT_CODE_SERIAL );
        msg.can_id = lwa4_ft_canid( ft->base_id, LWA4_FT_CODE_SERIAL );
        msg.can_dlc = 0;
        canmat_status_t r = send_recv( ft, &msg, &rid, &rmsg, 1 );
        if( 0 != r ){
            fprintf(stderr, "Couldn't perform serial request: %s\n", canResultString(r));
            return r;
        }
        if( 8 != rmsg.can_dlc ) {
            fprintf(stderr, "Invalid length of serial number data: %d\n", rmsg.can_dlc );
            return CANMAT_ERR_PROTO;
        }
        memcpy( ft->serial, rmsg.data, 8 );
        ft->serial[8] = '\n';
    }
    //somatic_verbprintf(2, "Got Serial\n");
    // read firmware version
    {
        struct can_frame msg, rmsg;
        msg.can_id = lwa4_ft_canid( ft->base_id, LWA4_FT_CODE_READ_FIRMWARE_VERSION );
        canid_t rid = lwa4_ft_canid( ft->base_id, LWA4_FT_CODE_READ_FIRMWARE_VERSION );
        msg.can_dlc = 0;
        canmat_status_t r = send_recv( ft, &msg, &rid, &rmsg, 1 );
        if( 0 != r ){
            fprintf(stderr, "Couldn't perform version request: %s\n", canResultString(r));
            return r;
        }
        if( 4 != rmsg.can_dlc ) {
            fprintf(stderr, "Invalid length of version data: %d\n", rmsg.can_dlc );
            return CANMAT_ERR_PROTO;
        }
        ft->firmware_version[0] = rmsg.data[0];
        ft->firmware_version[1] = rmsg.data[1];
        ft->firmware_version[2] = aa_endconv_ld_be_i16( rmsg.data + 2 );
        //somatic_verbprintf(1, "firmware version: %d.%d.%d\n",
                           //ft->firmware_version[0],
                           //ft->firmware_version[1],
                           //ft->firmware_version[2] );
    }

    // read calibration units
    if( ft->firmware_version[0] > 3 ||
        (ft->firmware_version[0] == 3 && ft->firmware_version[1] >= 7 ) )
    {
        struct can_frame msg, rmsg;
        msg.can_id = lwa4_ft_canid( ft->base_id, LWA4_FT_CODE_READ_UNIT );
        canid_t rid = lwa4_ft_canid( ft->base_id, LWA4_FT_CODE_READ_UNIT );
        msg.can_dlc = 0;
        canmat_status_t r = send_recv( ft, &msg, &rid, &rmsg, 1 );
        if( CANMAT_OK != r ){
            fprintf(stderr, "Couldn't perform unit request: %s\n", canResultString(r));
            return r;
        }
        if( 2 != rmsg.can_dlc ) {
            fprintf(stderr, "Invalid length of units data: %d\n", rmsg.can_dlc );
            return CANMAT_ERR_PROTO;
        }
        ft->units[0] = rmsg.data[0];
        ft->units[1] = rmsg.data[1];
        //somatic_verbprintf(1, "Units: force=%d, torque=%d\n", ft->units[0], ft->units[1]);
    } else {
        ft->units[0] = -1;
        ft->units[1] = -1;
    }

    // read calibration matrix
    {
        struct can_frame msg, rmsg[3];
        //somatic_verbprintf(1, "Matrix:\n");
        canid_t rid[3];
        msg.can_dlc = 1;
        rid[0] = lwa4_ft_canid( ft->base_id, LWA4_FT_CODE_READ_MATRIX );
        rid[1] = lwa4_ft_canid( ft->base_id, LWA4_FT_CODE_READ_MATRIX + 1 );
        rid[2] = lwa4_ft_canid( ft->base_id, LWA4_FT_CODE_READ_MATRIX + 2 );
        msg.can_id = lwa4_ft_canid( ft->base_id, LWA4_FT_CODE_READ_MATRIX );
        for( uint8_t i = 0; i < 6; i++ ) {
            msg.data[0] = i;
            canmat_status_t r = send_recv( ft, &msg, rid, rmsg, 3 );
            if( CANMAT_OK != r ){
                fprintf(stderr, "Couldn't perform matrix request: %s\n",
                        canResultString(r));
                return r;
            }
            if( 8 != rmsg[0].can_dlc || 8 != rmsg[1].can_dlc || 8 != rmsg[2].can_dlc ) {
                fprintf(stderr, "Invalid length of matrix data: %d, %d, %d\n",
                        rmsg[0].can_dlc, rmsg[1].can_dlc, rmsg[2].can_dlc );
                return CANMAT_ERR_PROTO;
            }
            assert(rmsg[0].can_id = rid[0]);
            assert(rmsg[1].can_id = rid[1]);
            assert(rmsg[2].can_id = rid[2]);
            for( int j = 0; j < 3; j ++ ) {
                AA_MATREF(ft->M, 6, i, 2*j) = aa_endconv_ld_be_s(&rmsg[j].data[0]);
                AA_MATREF(ft->M, 6, i, 2*j+1) = aa_endconv_ld_be_s(&rmsg[j].data[4]);
            }
            //somatic_verbprintf(1, "\t%6.3f\t%6.3f\t%6.3f\t%6.3f\t%6.3f\t%6.3f\n",
                               //AA_MATREF( ft->A, 6, i, 0 ),
                               //AA_MATREF( ft->A, 6, i, 1 ),
                               //AA_MATREF( ft->A, 6, i, 2 ),
                               //AA_MATREF( ft->A, 6, i, 3 ),
                               //AA_MATREF( ft->A, 6, i, 4 ),
                               //AA_MATREF( ft->A, 6, i, 5 ) );

        }
        // pre-scale matrix by counts per force/torque: 1e6
        // avoids need to rescale each sample
        cblas_dscal( 6*6, 1/1e6, ft->M, 1 );
    }

    // Invert calibration
    AA_MEM_CPY( ft->Minv, ft->M, 6*6 );
    aa_la_inv( 6, ft->Minv );

    // set bias
    AA_MEM_SET( ft->z_bias, 0, 6 );

    // init lqg
    {
        memset( &ft->lqg, 0, sizeof(ft->lqg) );
        memset( &ft->lqg_parm, 0, sizeof(ft->lqg_parm) );
        ft->lqg.n_x = 6;
        ft->lqg.n_z = 6;
        ft->lqg.n_u = 0;
        ft->lqg.A = ft->lqg_parm.A;
        aa_la_diag( 6, ft->lqg_parm.A, 1.0 );
        ft->lqg.C = ft->Minv;

        ft->lqg.P = ft->lqg_parm.P;
        ft->lqg.V = ft->lqg_parm.V;
        ft->lqg.W = ft->lqg_parm.W;

        ft->lqg.K = ft->lqg_parm.K;
        ft->lqg.z = ft->lqg_parm.z;
        ft->lqg.x = ft->lqg_parm.x;
    }

    return CANMAT_OK;
}

canmat_status_t lwa4_ft_close( lwa4_ft_t *ft ) {
    (void)ft;
    return CANMAT_OK;
}

static void dump_error (int err) {
    if( err & (1<< 1) ) fprintf(stderr, "DAC/ADC check result to high (1)\n");
    if( err & (1<< 2) ) fprintf(stderr, "DAC?ADC check result to low (2)\n");
    if( err & (1<< 3) ) fprintf(stderr, "Artifical Analog Ground out of range (3)\n");
    if( err & (1<< 4) ) fprintf(stderr, "Power supply to high(4)\n");
    if( err & (1<< 5) ) fprintf(stderr, "Power supply to low(5)\n");
    if( err & (1<< 6) ) fprintf(stderr, "Bad active calibration(6)\n");
    if( err & (1<< 7) ) fprintf(stderr, "EEPROM failure (7)\n");
    if( err & (1<< 8) ) fprintf(stderr, "Configuration invalid (8)\n");
    if( err & (1<< 9) ) fprintf(stderr, "Reserved (9)\n");
    if( err & (1<<10) ) fprintf(stderr, "Reserved (10)\n");
    if( err & (1<<11) ) fprintf(stderr, "Sensor temperature too high (11)\n");
    if( err & (1<<12) ) fprintf(stderr, "Sensor temperature too low (12)\n");
    if( err & (1<<13) ) fprintf(stderr, "Reserved (13)\n");
    if( err & (1<<14) ) fprintf(stderr, "CAN bus error (14)\n");
    if( err & (1<<15) ) fprintf(stderr, "Error State (15)\n");
}

static void calc_force( lwa4_ft_t *ft, double z[6], double x[6] ) {
    // Multiply the "unbiased readings" with the Transducer calibration matrix
    // Matrix is pre-scaled
    // x = A*z
    cblas_dgemv( CblasColMajor, CblasNoTrans, 6, 6,
                 1, ft->M, 6,
                 z, 1,
                 0, x, 1 );
}

canmat_status_t lwa4_ft_read( lwa4_ft_t *ft, double x[6] ) {
    // fill in messages
    struct can_frame msg, rmsg[2];
    canid_t rid[2];
    rid[0] = lwa4_ft_canid( ft->base_id, LWA4_FT_CODE_READ_SG_DATA);
    rid[1] = lwa4_ft_canid( ft->base_id, LWA4_FT_CODE_READ_SG_DATA + 1);
    msg.can_id = lwa4_ft_canid( ft->base_id, LWA4_FT_CODE_READ_SG_DATA);
    msg.can_dlc = 0;
    // request data
    canmat_status_t r = send_recv( ft, &msg, rid, rmsg, 2 );
    if( CANMAT_OK != r ){
        if( !(CANMAT_ERR_OS == r &&
              EINTR == ft->cif->err) )
        {
            fprintf(stderr, "Couldn't perform sg request: %s\n",
                    canmat_iface_strerror(ft->cif, r) );
        }
        return r;
    }
    // check message
    if( 8 != rmsg[0].can_dlc || 6 != rmsg[1].can_dlc ) {
        fprintf(stderr, "Invalid length of sg data: %d, %d\n",
                rmsg[0].can_dlc, rmsg[1].can_dlc);
        return CANMAT_ERR_PROTO;
    }
    assert(rmsg[0].can_id = rid[0]);
    assert(rmsg[1].can_id = rid[1]);

    // ===============================================================================
    // Extract data: convert the big endian data values to native representation

    // First two bytes are for NETCANOEM status
    int err =  aa_endconv_ld_be_i16( rmsg[0].data );

    // Need to offset the first two bytes and read the force values
    for(size_t i = 1; i < 4; i ++ )
        ft->raw[i-1] = aa_endconv_ld_be_i16( rmsg[0].data + 2*i );

    // Read the torques
    for(size_t i = 0; i < 3; i ++ )
        ft->raw[i+3] = aa_endconv_ld_be_i16( rmsg[1].data + 2*i );
    //somatic_verbprintf(2, "\t\t%02x:%02x\t%02x:%02x\t%02x:%02x\t%02x:%02x\t%x:%02x\t%02x:%x\n",
                       //rmsg[0].data[2], rmsg[0].data[3],
                       //rmsg[0].data[4], rmsg[0].data[5],
                       //rmsg[0].data[6], rmsg[0].data[7],
                       //rmsg[1].data[0], rmsg[1].data[1],
                       //rmsg[1].data[2], rmsg[1].data[3],
                       //rmsg[1].data[4], rmsg[1].data[5] );

    //somatic_verbprintf(2, "\t0x%x\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\t%.1f\n",
                       //err, ft->raw[0], ft->raw[1], ft->raw[2],
                       //ft->raw[3], ft->raw[4], ft->raw[5] );
    // check errors
    // ===============================================================================
    // Process data: check for errors and calculate f/t

    // Check errors
    if( err & (1<<15) ) {
        dump_error( err );
        return CANMAT_ERR_DEV;
    }

    // Re-order readings
    for( size_t i = 0; i < 3; i ++ ) {
        ft->z_raw[2*i] = ft->raw[i];
        ft->z_raw[2*i+1] = ft->raw[i+3];
    }
    // Remove the bias from the raw data
    for( size_t i = 0; i < 6; i ++ ) ft->lqg.z[i] = ft->z_raw[i] - ft->z_bias[i];

    if( x ) {
        calc_force( ft, ft->lqg.z, x );
    }

    return CANMAT_OK;
}

canmat_status_t lwa4_ft_filter( lwa4_ft_t *ft, double x[6] ) {
    rfx_lqg_kf_predict( &ft->lqg );
    rfx_lqg_kf_correct( &ft->lqg );
    if( x ) {
        AA_MEM_CPY( x, ft->lqg.x, 6 );
    }
    return CANMAT_OK;
}

canmat_status_t lwa4_ft_bias( lwa4_ft_t *ft, const double x[6]) {
    // get an average strain guage vector
    int n = 100;
    double z_raw[6] = {0};
    for( int i = 0; i < n; i ++ ) {
        lwa4_ft_read( ft, NULL );
        for( size_t j = 0; j < 6; j++ ) z_raw[j] += ft->z_raw[j]/n;
    }

    // Compute bias necessary to match the expected x
    /* x = A*(z_raw - z_bias)
     * z_bias = z_raw - A^{-1} * x
     */

    AA_MEM_CPY( ft->z_bias, z_raw, 6 );
    cblas_dgemv( CblasColMajor, CblasNoTrans, 6, 6,
                 -1, ft->Minv, 6,
                 x, 1,
                 1, ft->z_bias, 1 );

    return CANMAT_OK;
}
