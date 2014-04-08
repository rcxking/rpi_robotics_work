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

// Eigen Libraries:
#include <Eigen/Dense> 
#include <vector>
using namespace Eigen;
using namespace std;

int main(int argc, char **argv) {

	Eigen::MatrixXf A(6, 6);
	Eigen::VectorXf b(6);

	const int destinationTime = 2;


	A << 0, 0, 0, 0, 0, 1,
	     32, 16, 8, 4, 2, 1,
		 0, 0, 0, 0, 1, 0,
		 80, 32, 12, 4, 1, 0,
		 0, 0, 0, 2, 0, 0, 
		 160, 48, 12, 2, 0, 0;

	b << 0, destinationTime, 0, 0, 0, 0;

	cout << "Matrix A:\n" << A << endl;
	cout << "Matrix B:\n" << b << endl;

	Eigen::VectorXf x(6);
	x = A.colPivHouseholderQr().solve(b);
	cout << "Solution x:\n" << x << endl;

	
	return 0;
	
} // End function main()
