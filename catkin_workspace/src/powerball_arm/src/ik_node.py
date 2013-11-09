#!/usr/bin/env python

'''
ik_node.py - rosnode to calculate the inverse kinematics for the
			powerball arm.

Bryant Pong
10/28/13
Last Updated: 11/8/13 - 6:37 PM
'''

# Import the rospy ROS Python library:
#import rospy

# Python Standard Libraries:
from math import * # Access to pi, trig. functions

# Import numpy for matrices and relevant operations:
from numpy import *

'''
Function to calculate the inverse kinematics.  This function takes in two 
arguments: 
1) T06 (Homogenous Input) - a 4 x 4 matrix
2) th_p (Previous Input) - a 1 x 6 vector
'''
def inverse_kinematics(T06, th_p):
	
	# Numpy Matrix to store the working solution (7 x 8 matrix):
	th_ik = mat([[0 for col in xrange(8)] for row in xrange(7)])	

	# DEBUG ONLY - Print out the initialized th_ik matrix: - Validated
	print("th_ik is: ")
	print(th_ik)
	print("\n")

	# Numpy Array (6 x 1) to hold the Powerball Symmetric Joint Limits:
	th_limit = array([ [170], [110], [155], [170], [140], [170]]) * pi / 180	

	# DEBUG ONLY - Print out the Symmetrix Joint Limits: - Validated
	print("th_limit is: ")
	print(th_limit)
	print("\n")

	# Powerball Link Length Constants:
	d_1 = 205 # Base length
	a_2 = 350 # Upper Arm
	d_4 = 305 # Forearm
	d_6 = 75 # Hand



if __name__ == '__main__':
	inverse_kinematics(1, 2)


