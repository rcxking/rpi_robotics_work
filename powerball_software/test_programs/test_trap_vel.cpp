#include <stdio.h>
#include <math.h>
#include "sns.h"
#include "../include/trap_vel.h"

int main(int argc, char **argv) {

	// Initialize SNS Protocol:
	sns_init();

	// Create the SNS channels and populate the chan struct:
	ach_channel_t refChan, stateChan;

	sns_chan_open(&refChan, "ref", NULL);
	sns_chan_open(&stateChan, "state", NULL);
	{
		ach_channel_t *chans[] = {&refChan, &stateChan, NULL};
		sns_sigcancel(chans, sns_sig_term_default);
	} // End code block
	
	/*
	struct sns_msg_motor_ref *motor_msg = (struct sns_msg_motor_ref *) malloc(sizeof(char) * 1024);
	struct sns_msg_motor_state *motor_info = (struct sns_msg_motor_state *) malloc(sizeof(char) * 1024);

	enum sns_motor_mode opt_mode = SNS_MOTOR_MODE_VEL;
	sns_real_t *opt_u = (sns_real_t *) malloc(sizeof(sns_real_t) * 6);
	uint32_t n_opt_u = 6;

	motor_msg->mode = opt_mode;
	motor_msg->header.n = n_opt_u;

	opt_u[0] = opt_u[1] = opt_u[2] = opt_u[3] = opt_u[4] = 0.0;
	opt_u[5]= -0.3;

	memcpy(motor_msg->u, opt_u, n_opt_u * sizeof(motor_msg->u[0]));
	struct timespec now;
	clock_gettime(ACH_DEFAULT_CLOCK, &now);
	sns_msg_set_time(&motor_msg->header, &now, 1e9);

	ach_put(&refChan, motor_msg, sns_msg_motor_ref_size(motor_msg));


	free(motor_msg);
	free(motor_info);
	*/
	// Rotate the end motor (Motor 5):
	int result = rotateToPosition(&refChan, &stateChan, 5, M_PI / 2, 1.0, 10);  

	return 0;
} // End function main()
