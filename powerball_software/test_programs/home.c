/*
 * home.c - Program to start the  
 * 
 * Bryant Pong
 * 2/4/14
 * Last Updated: 2/4/14 - 1:57 PM
 */

// Libraries
#include "config.h"

#include <getopt.h>
#include <syslog.h>
#include <dlfcn.h>
#include "sns.h"
     
char *opt_channel = NULL;
enum sns_motor_mode opt_mode = SNS_MOTOR_MODE_POS;
sns_real_t *opt_u = NULL;
uint32_t n_opt_u = 0;

static void posarg(char *arg, int i) {
	if(0 == i) {
		opt_channel = strdup(arg);
	} else {
		opt_u = (sns_real_t*) realloc(opt_u, (1+n_opt_u) * sizeof(opt_u[0]));
		opt_u[n_opt_u++] = atof(arg);
	}
}

int main(int argc, char **argv) {

} // End function main
