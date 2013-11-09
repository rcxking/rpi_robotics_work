/*
 * powerball_inverse_kinematics.h
 *
 * Code generation for function 'powerball_inverse_kinematics'
 *
 * C source code generated on: Thu Nov 07 07:37:25 2013
 *
 */

#ifndef __POWERBALL_INVERSE_KINEMATICS_H__
#define __POWERBALL_INVERSE_KINEMATICS_H__
/* Include files */
#include <math.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>
#include "rt_defines.h"
#include "rt_nonfinite.h"

#include "rtwtypes.h"
#include "powerball_inverse_kinematics_types.h"

/* Type Definitions */

/* Named Constants */

/* Variable Declarations */

/* Variable Definitions */

/* Function Declarations */
extern void powerball_inverse_kinematics(const real_T T06[16], const real_T th_p[6], real_T th_out_data[56], int32_T th_out_size[2]);
extern void powerball_inverse_kinematics_initialize(void);
extern void powerball_inverse_kinematics_terminate(void);
#endif
/* End of code generation (powerball_inverse_kinematics.h) */
