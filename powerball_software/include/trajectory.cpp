/*
 * trajectory.cpp - Implementation of the trajectory generator.
 *
 * Bryant Pong
 * 4/14/14
 *
 * Last Updated: 4/14/14 - 10:45 AM
 */
 
// Headers:
#include "trajectory.h"
#include <iostream>
#include <cmath>
#include <Eigen/Dense>

/*
 * generateTrajectory takes in the time a user wants a Powerball joint to 
 * rotate to a target destination and generates a 5th-order (quintic) 
 * polynomial equation representing the trajectory position function.  
 * This function returns a 6x1 Vector containing the constants of the equation.
 */ 
Eigen::VectorXf generateTrajectory(const int totalTime) {

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
	 * [ 0,              0,              0,             0,           0,           1         ]         [A]                    [0]
	 * [ totalTime^5,    totalTime^4,    totalTime^3,   totalTime^2, totalTime,   1         ]         [B]                    [totalTime]
	 * [ 0,              0,              0,             0,           1,           0         ]         [C]         =          [0]
	 * [ 5*totalTime^4,  4*totalTime^3,  3*totalTime^2, 2*totalTime, 1,           0         ]         [D]                    [0]
	 * [ 0,              0,              0,             2,           0,           0         ]         [E]                    [0]
	 * [ 20*totalTime^3, 12*totalTime^2, 6*totalTime,   2,           0,           0         ]         [F]                    [0]
	 */

	// Create a 6x6 Eigen Dense Matrix to hold the constants and a 6x1 Eigen Vector:
	Eigen::MatrixXf A(6, 6);
	Eigen::VectorXf B(6);

	// Populate the A matrix and B vector:
	A <<  0,                    0,                    0,                   0,                 0,         1,
	      pow(totalTime, 5),    pow(totalTime, 4),    pow(totalTime, 3),   pow(totalTime, 2), totalTime, 1,
		  0,                    0,                    0,                   0,                 1,         0,
		  5*pow(totalTime, 4),  4*pow(totalTime, 3),  3*pow(totalTime, 2), 2*totalTime,       1,         0,
		  0,                    0,                    0,                   2,                 0,         0,
		  20*pow(totalTime, 3), 12*pow(totalTime, 2), 6*totalTime,         2,                 0,         0;

	B << 0, totalTime, 0, 0, 0, 0;

	// Solve for the result vector x:

	Eigen::VectorXf solution(6);
	solution = A.colPivHouseholderQr().solve(B);
	

	return solution;
} // End function generateTrajectory()



 
