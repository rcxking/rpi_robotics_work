/*
 * remote.c - Utility to allow users to drive the Powerball Arm with the
 * numpad.
 *
 * Bryant Pong
 * 3/18/14
 *
 * Last Updated: 3/18/14 - 4:17 PM
 */

// Libraries
#include <stdio.h>
#include "sns.h" // Georgia Tech Library 
// End Section Libraries

// Main function:
int main(int argc, char **argv) {

	// Display the usage of how to use this program:
 	printf("Welcome to the Powerball Remote Program!\n");
	printf("To use this program, you will need the following keys:\n");
	printf("0 1 2 3 4 5 + -\n");
	printf("Joint 0 is the joint attached to the wall; Joint 5 is the joint ");
	printf("where the hand is attached\n");
	printf("Use +/- to change the direction of each joint\n");

	// Initialize the sns channels:
	//sns_init();

	// Variables to hold the velocities and positions:
	double velocity = 0.1;

	for(;;) {
		printf("Current velocity is %lf\n", velocity);
		char nextInput, space;
		if(scanf("%c%c", &nextInput, &space) < 0) {
			fprintf(stderr, "Error: scanf() failed\n");
			return -1;
		} // End if 
		printf("You entered: %c\n", nextInput);
	 } // End for	 

	

	return 0;
} // End function main()
