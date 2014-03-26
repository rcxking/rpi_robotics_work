/*
 * home.c - Program to rotate all Powerball joints to their home (0) position.
 *
 * Bryant Pong
 * RPI CS Robotics Lab
 * 3/26/14
 *
 * Last Updated: 3/26/14 - 5:10 PM
 */

// Libraries:
#include <stdio.h>
#include "sns.h"

// Main function:
int main(void) {

	// Initialize the sns protocol:
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

			
	return 0;
} // End function main() 
 
