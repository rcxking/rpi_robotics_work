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
	
	// Rotate the end motor (Motor 5):
	int result = rotateToPosition(&refChan, &stateChan, 5, M_PI / 2, 1.0, 5);  

	return 0;
} // End function main()
