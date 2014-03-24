#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "sns.h"

int main(int argc, char **argv) {

	// Open ACH Channel:
	ach_channel_t chan;
	sns_chan_open(&chan, "state", NULL);
	{
		ach_channel_t *chans[] = {&chan, NULL};
		sns_sigcancel(chans, sns_sig_term_default);
	} // End code block

    struct sns_msg_motor_state *msg; //= (struct sns_msg_motor_ref*)alloca( sns_msg_motor_ref_size_n(n_opt_u) );
	size_t frame_size;
	void *buffer = malloc(sizeof(char) * 1024);

	// Keep track of the old velocity and position values:
	sns_real_t oldPos1, oldPos2, oldPos3, oldPos4, oldPos5, oldPos6;
	sns_real_t oldVel1, oldVel2, oldVel3, oldVel4, oldVel5, oldVel6;

	oldPos1 = oldPos2 = oldPos3 = oldPos4 = oldPos5 = oldPos6 = -9001.0;
	oldVel1 = oldVel2 = oldVel3 = oldVel4 = oldVel5 = oldVel6 = -9001.0;

	while(1) {
		enum ach_status r = ach_get(&chan, buffer, 1024, &frame_size, NULL, ACH_O_WAIT | ACH_O_LAST);
		if( ACH_MISSED_FRAME == r ) {
   			fprintf(stdout, "Missed a/some messages(s)\n");
		} else if( ACH_STALE_FRAMES == r ) {
    		fprintf( stdout, "No new data\n" );
		} else if( ACH_OK != r ) {
    		//syslog( LOG_ERR, "Unable to get a message: %s\n", ach_result_to_string(r) );
			fprintf(stdout, "Unable to get a message: %s\n", ach_result_to_string(r));
			return -1;
		} 
		//fprintf(stdout, "Successfully received sns_msg_motor_state!\n");
	
		msg = (struct sns_msg_motor_state *) buffer;

		// Let's get the current position and velocity values:
		sns_real_t curPos1, curPos2, curPos3, curPos4, curPos5, curPos6;
		sns_real_t curVel1, curVel2, curVel3, curVel4, curVel5, curVel6;

		curPos1 = msg->X[0].pos;
		curPos2 = msg->X[1].pos;
		curPos3 = msg->X[2].pos;
		curPos4 = msg->X[3].pos;
		curPos5 = msg->X[4].pos;
		curPos6 = msg->X[5].pos;

		curVel1 = msg->X[0].vel;
		curVel2 = msg->X[1].vel;
		curVel3 = msg->X[2].vel;
		curVel4 = msg->X[3].vel;
		curVel5 = msg->X[4].vel;
		curVel6 = msg->X[5].vel;

		// Is there a drastic difference between the new positions and old positions?
		if( (abs(curPos1 - oldPos1) < 0.00001) ||
			(abs(curPos2 - oldPos2) < 0.00001) ||
			(abs(curPos3 - oldPos3) < 0.00001) ||
			(abs(curPos4 - oldPos4) < 0.00001) ||
			(abs(curPos5 - oldPos5) < 0.00001) ||
			(abs(curPos6 - oldPos6) < 0.00001) ||

			(abs(curVel1 - oldVel1) < 0.00001) ||
			(abs(curVel2 - oldVel2) < 0.00001) ||
			(abs(curVel3 - oldVel3) < 0.00001) ||
			(abs(curVel4 - oldVel4) < 0.00001) ||
			(abs(curVel5 - oldVel5) < 0.00001) ||
			(abs(curVel6 - oldVel6) < 0.00001) ) {

				fprintf(stdout, "WE HAVE A CHANGE!\n");
				fprintf(stdout, "Positions are: 1: %f 2: %f 3: %f 4: %f 5: %f 6: %f\n", msg->X[0].pos, msg->X[1].pos, msg->X[2].pos, msg->X[3].pos, msg->X[4].pos, msg->X[5].pos);
				fprintf(stdout, "Velocities are: 1: %f 2: %f 3: %f 4: %f 5: %f 6: %f\n", msg->X[0].vel, msg->X[1].vel, msg->X[2].vel, msg->X[3].vel, msg->X[4].vel, msg->X[5].vel);
		} // End if

		oldPos1 = curPos1;
		oldPos2 = curPos2;
		oldPos3 = curPos3;
		oldPos4 = curPos4;
		oldPos5 = curPos5;
		oldPos6 = curPos6;

		oldVel1 = curVel1;
		oldVel2 = curVel2;
		oldVel3 = curVel3;
		oldVel4 = curVel4;
		oldVel5 = curVel5;
		oldVel6 = curVel6;


	} // End while()

	free(buffer);

	return 0;
} // End function main()
