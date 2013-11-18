#!/usr/bin/env python

'''
ik_node.py - rosnode to calculate the inverse kinematics for the
powerball arm.

Bryant Pong
10/28/13
Last Updated: 11/18/13 - 4:32 PM
'''

# Import the rospy ROS Python library:
#import rospy

# Python Standard Libraries:
from math import * # Access to pi, trig. functions

# Import numpy for matrices and relevant operations:
from numpy import *

'''
Function to solve inverse kinematics subproblem 2.

Arguments:
1) k1 
'''
def subproblem2(k1, k2, p, q):
	# We need to define eps (epsilon), the smallest floating point number 2^-52
	eps = 2 ** -52

'''
Function to calculate the inverse kinematics.  This function takes in two 
arguments: 
1) T06 (Homogenous Input) - a 4 x 4 numpy matrix
2) th_p (Previous Input) - a 1 x 6 numpy matrix
'''
def inverse_kinematics(T06, th_p):
	
	# Numpy Matrix to store the working solution (7 x 8 matrix):
	th_ik = zeros([7, 8])

	# DEBUG ONLY - Print out the initialized th_ik matrix: - Validated
	print("th_ik is: ")
	print(th_ik)
	print("\n")

	# Numpy Matrix (1 x 6) to hold the Powerball Symmetric Joint Limits:
	th_limit = matrix( [[170], [110], [155], [170], [140], [170]]) * pi / 180	

	# DEBUG ONLY - Print out the Symmetrix Joint Limits: - VALIDATED
	'''
	print("th_limit is: ")
	print(th_limit)
	print("\n")
	'''

	# Powerball Link Length Constants:
	d_1 = 205 # Base length
	a_2 = 350 # Upper Arm
	d_4 = 305 # Forearm
	d_6 = 75 # Hand

	# DEBUG ONLY - Print out the Link Length Constants: - VALIDATED
	'''
	print("d_1 is: " + str(d_1))
	print("a_2 is: " + str(a_2))
	print("d_4 is: " + str(d_4))
	print("d_6 is: " + str(d_6))
	print("\n")
	'''
	
	# Solve for angle theta_3:
	
	'''
	T06 has the following form:
	1  2  3  x
	4  5  6  y
	7  8  9  z
	0  0  0  1
	
	We first need the upper left-most 3x3 matrix
	1 2 3
	4 5 6
	7 8 9
	
	This can be done using numpy's matrix slicing.  Remember that in Python
	matrices/arrays are 0-indexed.
	'''
	dx = T06[0:3, 0:3] * matrix([ [0], [0], [d_6] ])
	
	# DEBUG ONLY - Print out dx: - VALIDATED
	'''
	print("dx is: ")
	print(dx)
	'''
	
	# Calculate the vector with the tool tip distance and base distance removed:
	d_elbow = T06[0:3,3] - dx - matrix([ [0], [0], [d_1] ])
	
	# DEBUG ONLY - Print out d_elbow: - VALIDATED
	print("d_elbow is: ")
	print(d_elbow)
	
	# Calculate the distance from joints 1 & 2 to the spherical wrist
	d_elbow_norm = linalg.norm(d_elbow)
	# DEBUG ONLY - Print out d_elbow_norm: - VALIDATED
	print("d_elbow_norm is: " + str(d_elbow_norm))
	
	# Calculate the angle of the elbow - VALIDATED
	temp = pi - acos(( (a_2 * a_2) + (d_4 * d_4) - (d_elbow_norm * d_elbow_norm)) / (2 * a_2 * d_4))
	print("temp is: " + str(temp))
	
	# Elbow up:
	th_ik[2, 0:4] = temp
	th_ik[6, 0:4] = th_ik[6, 0:4] + 2;
	th_ik[2, 4:8] = -temp;
	
	# VALIDATED
	print("th_ik is now: ")
	print(th_ik)
	
	
	
	
	


if __name__ == '__main__':
	T06 = matrix([ [ 0.4538, -0.8732,  0.1777, -8.0357 ],
				   [-0.8501, -0.3645,  0.3801, 34.8715 ],
				   [-0.2672, -0.3235, -0.9077, 444.2324],
				   [ 0,       0,       0,      1       ] ])
	th_p = matrix([0, 0, 0, 0, 0, 0])
	inverse_kinematics(T06, th_p)


