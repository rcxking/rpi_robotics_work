#ifndef _trajectory_h_
#define _trajectory_h_

/*
 * trajectory.h - Header file for generating a trajectory for the Powerball Arm
 *
 * Bryant Pong
 * 4/12/14
 *
 * Last Updated: 4/14/14 - 1:36 PM
 */   



// Headers:
#include <iostream>
#include <Eigen/Dense>


// Function Prototypes:
Eigen::VectorXf generateTrajectory(const int totalTime, const double startPos, const double targetPos);

#endif
