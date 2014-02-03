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

#ifndef NETCANFT_H
#define NETCANFT_H

#include <socanmatic.h>
#include <reflex.h>

/// interface struct for ATI NETCANOEM
typedef struct {
    struct canmat_iface *cif; ///< CAN interface
    uint8_t base_id;         ///< base identifier of device
    char serial[9];          ///< serial number
    int units[2];            ///< FT Unit codes
    int firmware_version[3]; ///< major.minor.build

    double M[6*6];           ///< calibration matrix
    double Minv[6*6];        ///< calibration matrix
    double raw[6];           ///< raw strain guage readings
    double z_raw[6];         ///< re-ordered strain guage readings
    double z_bias[6];        ///< subtract from re-ordered strain gauge reading

    rfx_lqg_t lqg;           ///< LQG filter
    struct {
        double A[6*6];
        double P[6*6];
        double V[6*6];
        double W[6*6];
        double K[6*6];
        double z[6];
        double x[6];
    } lqg_parm;
} lwa4_ft_t;

typedef enum {
    LWA4_FT_CODE_READ_SG_DATA = 0x0,
    LWA4_FT_CODE_READ_MATRIX = 0x2,
    LWA4_FT_CODE_SERIAL = 0x5,
    LWA4_FT_CODE_SET_CALIBRATION = 0x6,
    LWA4_FT_CODE_READ_UNIT = 0x8,
    LWA4_FT_CODE_RESET = 0xC,
    LWA4_FT_CODE_SET_BASE_ID = 0xD,
    LWA4_FT_CODE_SET_BAUD = 0xE,
    LWA4_FT_CODE_READ_FIRMWARE_VERSION = 0xF
} lwa4_ft_code_t;

typedef enum  {
    LWA4_FT_UNIT_LBF = 1,
    LWA4_FT_UNIT_N = 2,
    LWA4_FT_UNIT_KLBF = 3,
    LWA4_FT_UNIT_KN = 4,
    LWA4_FT_UNIT_KGF = 5,
    LWA4_FT_UNIT_GF = 6
} lwa4_ft_unit_force_t;

typedef enum {
    LWA4_FT_UNIT_LBF_IN = 1,
    LWA4_FT_UNIT_LBF_FT = 2,
    LWA4_FT_UNIT_N_M = 3,
    LWA4_FT_UNIT_N_MM = 4,
    LWA4_FT_UNIT_KGF_CM = 5,
    LWA4_FT_UNIT_KN_M = 6
} lwa4_ft_unit_torque_t;

static inline canid_t lwa4_ft_canid( uint8_t base_id, uint8_t code ) {
    return (canid_t)( (base_id << 4) | code );
}

/** Open force-torque sensor
 * \pre ft.cif is an open CAN interface, ft.base_id is valid
 * \post ft has openned CAN connection to the sensor
 * \return 0 on success, !0 on error
 */
enum canmat_status lwa4_ft_open( lwa4_ft_t *ft );

/** Close connection to force-torque sensor.
 */
enum canmat_status lwa4_ft_close( lwa4_ft_t *ft );

/** Read F/T data into x.
 */
enum canmat_status lwa4_ft_read( lwa4_ft_t *ft, double x[6] );

/** Kalman filter F/T data into x.
 */
enum canmat_status lwa4_ft_filter( lwa4_ft_t *ft, double x[6] );


/** Sets bias to current reading.
*/
enum canmat_status lwa4_ft_bias( lwa4_ft_t *ft, const double x[6] );

#endif // NETCANFT_H
