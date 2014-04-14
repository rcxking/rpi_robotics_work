/*
 * trajectory.cpp - Test program to calculate and draw out a trajectory for the Powerball Arm:
 *
 * Bryant Pong
 * 4/8/14
 *
 * Last Updated: 4/8/14 - 3:57 PM
 */
 
// STL Libraries:
#include <stdio.h>
#include <cmath>
#include <iostream>

#include "../include/trajectory.h"

int main(int argc, char **argv) {

	Eigen::VectorXf x(6);
	x = generateTrajectory(2);
	std::cout << "Solution x:\n" << x << std::endl;

	
	return 0;
	
} // End function main()
