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

#include <Eigen/Dense>

#include "../include/trajectory.h"

double getPosAtTime(const double time, const Eigen::VectorXf& solution) {

	double position = 0.0;

	position = solution(0) * pow(time, 5) + solution(1) * pow(time, 4) + solution(2) * pow(time, 3) + solution(3) * pow(time, 2) + solution(4) * time + solution(5);

	return position;
} // End function getPosAtTime()

int main(int argc, char **argv) {

	Eigen::VectorXf x(6);
	x = generateTrajectory(2, 0, M_PI / 2);
	std::cout << "Solution x:\n" << x << std::endl;

	for(double i = 0.0; i < 2.1; i += 0.1) {
		std::cout << "At time t = " << i << ", the position is: " << getPosAtTime(i, x) << std::endl;
	}
	
	return 0;
	
} // End function main()
