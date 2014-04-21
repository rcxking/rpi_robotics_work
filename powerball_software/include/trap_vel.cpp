/*
 * trap_vel.cpp - Implementation of a Position Controller with PID and
 * trapezoidal velocity profile.
 *
 * Bryant Pong
 * RPI CS Robotics Lab
 * 3/26/14
 *
 * Last Updated: 4/18/14 - 2:49 PM
 */

// Libraries:
#include <iostream>
#include <unistd.h>
#include <cmath>
#include <cstdio>
#include <ctime>
#include "trajectory.h"
#include "sns.h" 

inline unsigned long long rdtsc(void) {
	unsigned long long result = 0;
	unsigned hi, lo;
	do {
		__asm__ __volatile__ ("rdtsc" : "=a"(lo), "=d"(hi));
		result = ((unsigned long long) lo) | (((unsigned long long) hi) << 32);
	} while(__builtin_expect((int) result == -1, 0));

	return result;
} 


/* This function uses a PID loop to rotate the motor to a target position.
 *
 * Parameters:
 * motor: motor to control (motor 0 is closest to the wall; motor 5 is the wrist)
 * targetPosition: target position (in radians) to rotate to
 * targetVelocity: -1.0 to 1.0 floating point that sets the maximum velocity to rotate to
 * timeToRamp: number of seconds to hit target velocity from 0 rad/s
 */ 
int rotateToPosition(ach_channel_t *refChan, ach_channel_t *stateChan, int motor, double targetPosition, double targetVelocity, double timeToRamp) {

	// PID Variables:
	double kp, ki, kd; // Proportional, Integral, and Derivative constants, respectively
	kp = 0.1;
	ki = 0.0;
	kd = 0.05;

	double currentMotorVelocity, currentMotorPosition; 
	double error, deltaMotorVelocity;

	// Print out initial parameters:
	printf("DEBUG ONLY - target motor is %d\n", motor);
	printf("DEBUG ONLY - targetPosition is %f\n", targetPosition);
	printf("DEBUG ONLY - targetVelocity is %f\n", targetVelocity);
	printf("DEBUG ONLY - timeToRamp is %f\n", timeToRamp);
	
	// Allocate memory for the data being sent and received from the Powerball
    struct sns_msg_motor_ref *motor_msg = (struct sns_msg_motor_ref *) malloc(sizeof(char) * 1024);
    struct sns_msg_motor_state *motor_info = (struct sns_msg_motor_state *) malloc(sizeof(char) * 1024);

	// We first need to get the motor's initial position:
	size_t frame_size;
	enum ach_status r = ach_get(stateChan, motor_info, 1024, &frame_size, NULL, ACH_O_WAIT | ACH_O_LAST);

	// Print out the motor information:
	printf("DEBUG ONLY - target motor current position is %f\n", motor_info->X[motor].pos);
	currentMotorPosition = motor_info->X[motor].pos;

	// Determine the motor's inital velocity:
	if(currentMotorPosition < targetPosition) {
		// The motor is currently behind the target; positive velocity:
		currentMotorVelocity = 0.5;
	} else {
		// The motor is currently ahead of the target; negative velocity:
		currentMotorVelocity = -0.5;
	} // End else

	// Variables for constructing the message to send to the Powerball:
    enum sns_motor_mode opt_mode = SNS_MOTOR_MODE_VEL; // We're going to send a velocity message to the Powerball
    sns_real_t *opt_u = (sns_real_t *) malloc(sizeof(sns_real_t) * 6); // Velocities of each joint
    uint32_t n_opt_u = 6; // Number of joints to control

	// We need to get the planned trajectory:
	Trajectory traj(timeToRamp, 0, targetPosition,  10);
	traj.printTrajectory();

	// Timer objects for calculating where the Powerball should be:
	unsigned long long initialTime, currentTime;
	initialTime = currentTime = 0;
	initialTime = rdtsc();

	printf("DEBUG ONLY - currentMotorPosition is %lf\n", currentMotorPosition);
	printf("DEBUG ONLY - targetPosition is %lf\n", targetPosition);
	printf("DEBUG ONLY - before entering loop, difference between currentMotorPosition and targetPosition is %lf\n", fabs(currentMotorPosition - targetPosition));
	double absError = fabs(currentMotorPosition - targetPosition);
	printf("DEBUG ONLY - Before entering loop, absError is %lf\n", absError); 
 
	// Start the PID loop:
	while(absError > 0.001) {

		printf("DEBUG ONLY - Difference between currentMotorPosition and targetPosition is %lf\n", absError);

		r = ach_get(stateChan, motor_info, 1024, &frame_size, NULL, ACH_O_WAIT | ACH_O_LAST);
		
		currentTime = rdtsc();
		double duration = (currentTime - initialTime) / (double) 3800000000;
		printf("It has been %lf seconds since the program started:\n", duration);

		// This switch statement handles when a SIGINT (KeyboardInterrupt/Ctrl-C) is received:
		switch(r) {
        	case ACH_MISSED_FRAME:
            	printf("Missed Frame!\n");
                break;
            case ACH_OK:
                printf("ACH_get succeeded!\n");
                break;
            case ACH_TIMEOUT:
                printf("ACH timed out\n");
                break;
            case ACH_CANCELED:
                printf("Cancel received... shutting down\n");
                exit(EXIT_SUCCESS);
            default:
                printf("ach_get_failed()\n");
                break;
        } // End switch
	
		currentMotorPosition = motor_info->X[motor].pos;
	
		// Calculate the error between the currentMotorPosition and the targetPosition:
		error = currentMotorPosition - targetPosition;
		absError = fabs(error);
		//printf("DEBUG ONLY - current error is %f\n", error);


		// Now that we have the current time, let's get the position where the robot should be:
		double nextPos = traj.getPosAtTime(duration);
		std::cout << "At time: " << duration << " the joint should be at position: " << nextPos << std::endl;
		std::cout << "At time: " << duration << " the joint currently is at position: " << currentMotorPosition << std::endl;
		double positionError = nextPos - currentMotorPosition;  

		// Calculate the change in velocity:
		deltaMotorVelocity = kp * positionError;
		currentMotorVelocity += deltaMotorVelocity;

		// We're sending a velocity message command:
		motor_msg->mode = opt_mode;
        motor_msg->header.n = n_opt_u;

		opt_u[0] = opt_u[1] = opt_u[2] = opt_u[3] = opt_u[4] = 0.0;
		opt_u[5] = -1.0 * currentMotorVelocity;

		printf("currentMotorVelocity is %f\n", currentMotorVelocity);
	
		// Send the message!
        memcpy(motor_msg->u, opt_u, n_opt_u * sizeof(motor_msg->u[0]));
        struct timespec now;
        clock_gettime(ACH_DEFAULT_CLOCK, &now);
        sns_msg_set_time(&motor_msg->header, &now, 1e9);

		//usleep(1000);

        ach_put(refChan, motor_msg, sns_msg_motor_ref_size(motor_msg));

		//usleep(10000);		
	} // End while

	printf("DEBUG ONLY - DONE ROTATING TO TARGET DESTINATION!\n");

	// Excellent policy to free up allocated memory:
	free(motor_msg);
	free(motor_info);

	// If we reach this point, the motor has reached its target position successfully:
	return 0;  
} // End function rotateToPosition()
