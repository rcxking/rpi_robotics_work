/*
 * trajectory.cpp - Implementation of the trajectory generator.
 *
 * Bryant Pong
 * RPI CS Robotics Lab
 * 4/14/14
 *
 * Last Updated: 4/18/14 - 2:53 PM
 */
 
// Headers:
#include "trajectory.h"
#include <iostream>
#include <cmath>
#include <map>
#include <Eigen/Dense>

Trajectory::Trajectory(const int totalTime, const int startPos, const int targetPos, const int numSteps) {
	totalTime_ = totalTime;
	startPos_ = startPos;
	targetPos_ = targetPos;
	numSteps_ = numSteps;

	// Calculate the trajectory's constants:

	std::cout << "Now calculateTrajectory()\n";
	trajectoryConstants = calculateTrajectory();
	std::cout << "Done calculateTrajectory()\n";

	std::cout << "trajectoryConstants:\n" << trajectoryConstants << std::endl; 

	// With the contants now defined, let's generate the trajectory:
	generateTrajectory();
} // End Trajectory constructor

/*
 * calculateTrajectory takes in the time a user wants a Powerball joint to 
 * rotate to a target destination and generates a 5th-order (quintic) 
 * polynomial equation representing the trajectory position function.  
 * This function returns a 6x1 Vector containing the constants of the equation.
 */ 
Eigen::VectorXf Trajectory::calculateTrajectory() {

	/*
	 * A quintic function allows the velocity and acceleration to be constant and
	 * thus the Powerball arm will have smooth motions.  The equations and initial 
	 * conditions are:
	 *
	 * Quintic Position Equation: S(t) = At^5 + Bt^4 + Ct^3 + Dt^2 + Et + F
	 * Velocity = S'(t) = V(t) = 5At^4 + 4Bt^3 + 3Ct^2 + 2Dt + E
	 * Acceleration = V'(t) = A(t) = 20At^3 + 12Bt^2 + 6Ct + 2D
	 *
	 * EQ1: At time t = 0, Position constants: A = B = C = D = E = 0, F
	 * EQ2: (Position) At time t = totalTime, S(totalTime) = A(totalTime)^5 + B(totalTime)^4 + C(totalTime)^3 + D(totalTime)^2 + E(totalTime) + F
	 * EQ3: At time t = 0, Velocity constants: A = B = C = D = 0, E
	 * EQ4: (Velocity) At time t = totalTime V(totalTime) = 5A(totalTime)^4 + 4B(totalTime)^3 + 3C(totalTime)^2 + 2D(totalTime) + E
	 * EQ5: At time t = 0, Acceleration constants: A = B = C = 0, 2D
	 * EQ6: (Acceleration) At time t = totalTime A(totalTime) = 20A(totalTime)^3 + 12B(totalTime)^2 + 6C(totalTime) + 2D
	 * 
	 * We can solve this system of linear equation using the de factor Ax = B equation, where Matrix A (6x6) and B (6x1) are:
	 *                                   [Matrix A]                                                [Vector x]             [Vector B]
	 * [ 0,              0,              0,             0,           0,           1         ]         [A]                    [startPos]
	 * [ totalTime^5,    totalTime^4,    totalTime^3,   totalTime^2, totalTime,   1         ]         [B]                    [targetPos]
	 * [ 0,              0,              0,             0,           1,           0         ]         [C]         =          [0]
	 * [ 5*totalTime^4,  4*totalTime^3,  3*totalTime^2, 2*totalTime, 1,           0         ]         [D]                    [0]
	 * [ 0,              0,              0,             2,           0,           0         ]         [E]                    [0]
	 * [ 20*totalTime^3, 12*totalTime^2, 6*totalTime,   2,           0,           0         ]         [F]                    [0]
	 */

	// Create a 6x6 Eigen Dense Matrix to hold the constants and a 6x1 Eigen Vector:
	Eigen::MatrixXf A(6, 6);
	Eigen::VectorXf B(6);

	int totalTime = getTotalTime();
	int startPos = getStartPos();
	int targetPos = getTargetPos();

	// Populate the A matrix and B vector:
	A <<  0,                    0,                    0,                   0,                 0,         1,
	      pow(totalTime, 5),    pow(totalTime, 4),    pow(totalTime, 3),   pow(totalTime, 2), totalTime, 1,
		  0,                    0,                    0,                   0,                 1,         0,
		  5*pow(totalTime, 4),  4*pow(totalTime, 3),  3*pow(totalTime, 2), 2*totalTime,       1,         0,
		  0,                    0,                    0,                   2,                 0,         0,
		  20*pow(totalTime, 3), 12*pow(totalTime, 2), 6*totalTime,         2,                 0,         0;

	B << startPos, targetPos, 0, 0, 0, 0;

	// Solve for the result vector x:

	Eigen::VectorXf solution(6);
	solution = A.colPivHouseholderQr().solve(B);
	

	return solution;
} // End function calculateTrajectory()

/*
 * generateTrajectory() generates the actual trajectory of the Powerball.
 */  
void Trajectory::generateTrajectory() {

	// Let's calculate the range of times we need from 0..totalTime:
	double timeRange = getTotalTime();
	timeRange /= getNumSteps();

	std::cout << "timeRange: " << timeRange << std::endl;

	/*
 	 * The trajectory will be stored in the trajectory_ map with time keys and
	 * position values.
	 */   	
	for(double i = 0; i <= getTotalTime(); i += timeRange) {

		double pos = trajectoryConstants(0) * pow(i, 5) + 
					 trajectoryConstants(1) * pow(i, 4) + 
                     trajectoryConstants(2) * pow(i, 3) + 
                     trajectoryConstants(3) * pow(i, 2) + 
                     trajectoryConstants(4) * i + 
                     trajectoryConstants(5);

		std::cout << "pos is: " << pos << std::endl;

		trajectory_.insert(std::pair<double, double>(i, pos));
	} // End for
	std::cout << "Done inserting pairs\n";
} // End function generateTrajectory()

/*
 * printTrajectory() prints out the trajectory.
 */
void Trajectory::printTrajectory() {

	std::map<double, double>::iterator iter = trajectory_.begin();

	std::cout << "Trajectory from " << getStartPos() << " to " << getTargetPos() << " with " << getNumSteps() << " steps:" << std::endl;
	std::cout << "Time\tPosition" << std::endl;
	for(; iter != trajectory_.end(); iter++) {
		std::cout << iter->first << "\t" << iter->second << std::endl;
	} // End for

} // End function printTrajectory()

/*
 * getPosAtTime() returns the position the Powerball should be at a designated time.
 */
double Trajectory::getPosAtTime(const double time) {

	double pos = 0.0;

	pos = trajectoryConstants(0) * pow(time, 5) + 
          trajectoryConstants(1) * pow(time, 4) + 
          trajectoryConstants(2) * pow(time, 3) +  
          trajectoryConstants(3) * pow(time, 2) + 
          trajectoryConstants(4) * time + 
          trajectoryConstants(5);

	return pos;
} // End function getPosAtTime() 



 
