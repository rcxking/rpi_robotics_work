/*
 * remote.c - Utility to allow users to drive the Powerball Arm with the
 * numpad.
 *
 * Bryant Pong
 * 3/18/14
 *
 * Last Updated: 3/25/14 - 1:35 PM
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
	printf("Press 'q' to quit\n");

	// Start up sns protocol:
	sns_init();

	/*
	 * Initialize the sns channels:
	 * We need to open up two channels:
	 * The "ref" channel (reference) allows you to send motor commands to 
	 * the Powerball; the "state" channel (motor state) allows you to read
	 * the joint angles and velocities from the Powerball.
	 */ 
	
	ach_channel_t refChan, stateChan;
	sns_chan_open(&refChan, "ref", NULL);
	sns_chan_open(&stateChan, "state", NULL);
	{
		// These lines allow the program to safely terminate 
		// ach communications when a SIGINT is received:
		ach_channel_t *chans[] = {&refChan, &stateChan, NULL};
		sns_sigcancel(chans, sns_sig_term_default);
	}

	
	// Allocate memory for the data being sent and received from the Powerball
	struct sns_msg_motor_ref *motor_msg = (struct sns_msg_motor_ref *) malloc(sizeof(char) * 1024);
	struct sns_msg_motor_state *motor_info = (struct sns_msg_motor_state *) malloc(sizeof(char) * 1024);

	// Variables to hold the velocities and positions:
	double velocity = 0.1;

	// Size of an ach frame:
	size_t frame_size;

	// Variables for constructing the message to send to the Powerball:
	enum sns_motor_mode opt_mode = SNS_MOTOR_MODE_VEL; // We're going to send a velocity message to the Powerball
	sns_real_t *opt_u = (sns_real_t *) malloc(sizeof(sns_real_t) * 6); // Velocities of each joint
	uint32_t n_opt_u = 6; // Number of joints to controol

	for(;;) {

		// Let's get the joint and velocity data:
		enum ach_status r = ach_get(&stateChan, motor_info, 1024, &frame_size, NULL, ACH_O_WAIT | ACH_O_LAST);

		printf("\t***CURRENT POWERBALL ANGLES AND VELOCITIES***:\n");
		printf("\t***Positions: 0: %f 1: %f 2: %f 3: %f 4: %f 5: %f***\n",
				motor_info->X[0].pos,
				motor_info->X[1].pos,
				motor_info->X[2].pos,
				motor_info->X[3].pos,
				motor_info->X[4].pos,
				motor_info->X[5].pos);
		printf("\t***Velocities: 0: %f 1: %f 2: %f 3: %f 4: %f 5: %f***\n",
				motor_info->X[0].vel,
				motor_info->X[1].vel,
				motor_info->X[2].vel,
				motor_info->X[3].vel,
				motor_info->X[4].vel,
				motor_info->X[5].vel);
		printf("\t**********************************************\n");


		printf("Current velocity is %lf\n", velocity);
		char nextInput, space;
		if(scanf("%c%c", &nextInput, &space) < 0) {
			fprintf(stderr, "Error: scanf() failed\n");
			return -1;
		} // End if 
		printf("You entered: %c\n", nextInput);

		// Does the user wish to quit?
		if(nextInput == 'q') {
			break;
		} // End if

		// Let's populate the motor_msg!  Definition of the motor_msg is in /usr/local/include/sns/msg.h
		motor_msg->mode = opt_mode;
		motor_msg->header.n = n_opt_u;
		
		// We need to populate the motor velocities.  For safety reasons, a user can only drive 1 joint at a time:
		switch(nextInput) {
			case '0':
				opt_u[0] = velocity;
				opt_u[1] = opt_u[2] = opt_u[3] = opt_u[4] = opt_u[5] = 0.0;
				break;
			case '1':
				opt_u[1] = velocity;
                opt_u[0] = opt_u[2] = opt_u[3] = opt_u[4] = opt_u[5] = 0.0;
                break;
			case '2':
				opt_u[2] = velocity;
                opt_u[0] = opt_u[1] = opt_u[3] = opt_u[4] = opt_u[5] = 0.0;
                break;
			case '3':
				opt_u[3] = velocity;
                opt_u[0] = opt_u[1] = opt_u[2] = opt_u[4] = opt_u[5] = 0.0;
                break;
			case '4':
				opt_u[4] = velocity;
                opt_u[0] = opt_u[1] = opt_u[2] = opt_u[3] = opt_u[5] = 0.0;
                break;
			case '5':
				opt_u[5] = velocity;
                opt_u[0] = opt_u[1] = opt_u[2] = opt_u[3] = opt_u[4] = 0.0;
                break;
			case '8':
				if(velocity > -1.0) {
					velocity -= 0.1;
				} // End if
				opt_u[0] = opt_u[1] = opt_u[2] = opt_u[3] = opt_u[4] = opt_u[5] = 0.0;
                break;
			case '9':
				if(velocity < 1.0) {
					velocity += 0.1;
				} // End if
				opt_u[0] = opt_u[1] = opt_u[2] = opt_u[3] = opt_u[4] = opt_u[5] = 0.0;
                break;
			case 'm':
				velocity = 1.0;
				opt_u[0] = opt_u[1] = opt_u[2] = opt_u[3] = opt_u[4] = opt_u[5] = 0.0;
                break;
			case 'n':
				velocity *= -1.0;
				opt_u[0] = opt_u[1] = opt_u[2] = opt_u[3] = opt_u[4] = opt_u[5] = 0.0;
                break;
			default:
				opt_u[0] = opt_u[1] = opt_u[2] = opt_u[3] = opt_u[4] = opt_u[5] = 0.0;
				break;
		} // End switch	

		// Send the message!
		memcpy(motor_msg->u, opt_u, n_opt_u * sizeof(motor_msg->u[0]));
		struct timespec now;
		clock_gettime(ACH_DEFAULT_CLOCK, &now);
		sns_msg_set_time(&motor_msg->header, &now, 1e9);

		ach_put(&refChan, motor_msg, sns_msg_motor_ref_size(motor_msg));

	 } // End for	 

	// Excellent Policy to free up memory:
	free(motor_msg);
	free(motor_info);

	printf("Goodbye!\n");

	return 0;
} // End function main()
