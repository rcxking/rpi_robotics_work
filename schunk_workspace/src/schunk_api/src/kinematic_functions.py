'''
These functions provide forward and inverse kinematics solutions. 

Bryant Pong
RPI CS Robotics Lab
11/12/14

Last Updated: 11/12/14 - 5:25 PM
'''

from powerball_constants import *
import math
import numpy as np

''' 
This function takes in a 3-element list representing a vector and returns
a 3 x 3 matrix representing kcross. 
'''
def kcross(vector):
	return np.array( ([0, -1 * vector[2], vector[1]], 
	                  [vector[2], 0, -1 * vector[0]],
					  [-1 * vector[1], vector[0], 0]), dtype = float)

'''
This function is an implementation of the Euler-Rodrigues formula for 3D
rotations.

The angle to rotate must be in radians.
'''
def rot3D(rotAxis, angleToRotate):
	identity3 = np.array( ([1, 0, 0], [0, 1, 0], [0, 0, 1]), dtype=float )
	return identity3 + (math.sin(angleToRotate) * kcross(rotAxis)) + ( (1 - math.cos(angleToRotate)) * kcross(rotAxis) * kcross(rotAxis))

'''
Calculate the forward kinematics of the Powerball Arm.  The forward kinematics
is found by passing in a list of the joint angles.

Parameters:
jointAngles: A list of 6 floating point numbers representing the 6 joint angles (in radians)
'''
def fkine(jointAngles):

	# Extract the joint angles from the list:
	q1 = jointAngles[0]
	q2 = jointAngles[1]
	q3 = jointAngles[2]
	q4 = jointAngles[3]
	q5 = jointAngles[4]
	q6 = jointAngles[5]

	# The rotation matrices for the joints:
	R01 = rot3D(JOINT_1_ROTATION_AXIS, q1)
	R12 = rot3D(JOINT_2_ROTATION_AXIS, q2)
	R23 = rot3D(JOINT_3_ROTATION_AXIS, q3)
	R34 = rot3D(JOINT_4_ROTATION_AXIS, q4)
	R45 = rot3D(JOINT_5_ROTATION_AXIS, q5)
	R56 = rot3D(JOINT_6_ROTATION_AXIS, q6)

	R02 = R01 * R12
	R03 = R02 * R23
	R04 = R03 * R34
	R05 = R04 * R45
	R06 = R05 * R56 
 
	# Calculate the forward kinematics:
	forwardKinematics = P01 + (R01 *  P12) + (R02 * P23) + (R03 * P34) + (R04 * P45) + (R05 * P56) + (R05 * P6T)

	return forwardKinematics
