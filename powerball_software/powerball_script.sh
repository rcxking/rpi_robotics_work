#!/bin/sh

# This script creates several of the ACH channels, initializes the SNS logging 
# channel, and then starts up the CAN daemon
#
# Bryant Pong
# 2/24/14
#
# Last Updated: 2/28/14 - 3:13 PM

# Start the SNS logging daemon and create sns-log
sudo /usr/local/etc/init.d/sns start      

# Create the ACH state and reference channels:
ach mk ref
ach mk state  

# Finally, start up the can402 CAN interface daemon:
can402 -f can1 -a socketcan -n 3 -c ref -s state    
