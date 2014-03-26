/*
 * trap_vel.h - Header file for following a trapezoidal velocity profile.
 *
 * Bryant Pong
 * RPI CS Robotics Lab
 * 3/26/14
 *
 * Last Updated: 3/26/14 - 5:21 PM
 *
 */
#ifndef _trap_vel_h_
#define _trap_vel_h_

// Libraries:
#include <stdio.h>
#include "sns.h"
// End section Libraries

// Function Prototypes:
int rotateToPosition(int motor, double targetPosition, double targetVelocity, double timeToRamp);  
// End section Function Prototypes

#endif
