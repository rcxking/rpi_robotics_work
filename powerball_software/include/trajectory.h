#ifndef _trajectory_h_
#define _trajectory_h_

/*
 * trajectory.h - Header file for generating a trajectory for the Powerball Arm
 *
 * Bryant Pong
 * RPI CS Robotics Lab
 * 4/12/14
 *
 * Last Updated: 4/14/14 - 2:09 PM
 */   

// Headers:
#include <iostream>
#include <map>
#include <Eigen/Dense>

class Trajectory {

public:

	// Trajectory constructor
	Trajectory(const int totalTime, const int startPos, const int targetPos, const int numSteps);

	Eigen::VectorXf calculateTrajectory();
	void generateTrajectory();
	void printTrajectory();
	double getPosAtTime(const double time, const Eigen::VectorXf& solution);

	// Accessor functions
	inline double getTotalTime() const { return totalTime_; }
	inline double getStartPos() const { return startPos_; }
	inline double getTargetPos() const { return targetPos_; }
	inline int getNumSteps() const { return numSteps_; }


private:
	double totalTime_, startPos_, targetPos_;
	int numSteps_;
	Eigen::VectorXf trajectoryConstants;
	std::map<double, double> trajectory_; 
}; 

#endif
