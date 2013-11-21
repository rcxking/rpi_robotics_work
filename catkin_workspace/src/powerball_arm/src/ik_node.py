#!/usr/bin/env python

'''
ik_node.py - rosnode to calculate the inverse kinematics for the
powerball arm.

Bryant Pong
10/28/13
Last Updated: 11/21/13 - 6:05 PM
'''

# Import the rospy ROS Python library:
#import rospy

# Python Standard Libraries:
from math import * # Access to pi, trig. functions

# Import numpy for matrices and relevant operations:
from numpy import *

'''
Symbolic DH Parameter conversion.  This function takes in the 4 DH Parameters
and returns the homogenous transform matrix constructed from these parameters:
'''
def symDH(th, d, a, al):
	T = matrix([ [cos(th), -sin(th) * cos(al),  sin(th) * sin(al), a * cos(th)],
				 [sin(th),  cos(th) * cos(al), -cos(th) * sin(al), a * sin(th)],
				 [0		 ,	sin(al)			 , 	cos(al)			 , d		  ],
				 [0		 ,  0				 , 	0				 , 1		  ] ])
				 
	return T
# END FUNCTION symDH

'''
Inverse Kinematics Subproblem 0

Returns:
theta1: 1 unique solution
'''
def subproblem0(p, q, k):
	pp = p / (linalg.norm(p))
	qp = q / (linalg.norm(q))
	
	theta = 2 * atan2(linalg.norm(pp - qp), linalg.norm(pp + qp))
	
	if transpose(k) * (cross(p, q)) < 0:
		theta = -theta
	
	return theta

''' 
Inverse Kinematics Subproblem 1

Returns:
theta: 1 unique solution
'''
def subproblem1(k, p, q):

	print("\nNOW ENTERING SUBPROBLEM1")
	print("k is: ")
	print(k)
	print("p is: ")
	print(p)
	print("q is: ")
	print(q)

	k = k / (linalg.norm(k))
	print("k is now:")
	print(k)
	
		

	print("\nNOW LEAVING SUBPROBLEM1")

'''
Function to solve inverse kinematics subproblem 2.

Arguments:
1) k1 
'''
def subproblem2(k1, k2, p, q):

	print("\nNOW INSIDE SUBPROBLEM2")

	# We need to define eps (epsilon), the smallest floating point number 2^-52
	eps = 2 ** -52
	
	# PARAMETERS VALIDATED
	print("eps is: " + str(eps))
	print("k1 is: ")
	print(k1)
	print("k2 is: ")
	print(k2)
	print("p is: ")
	print(p)
	print("q is: ")
	print(q)
	
	k12 = transpose(k1) * k2
	print("k12 is:")
	print(k12)
	pk = transpose(p) * k2
	print("pk is:")
	print(pk)
	qk = transpose(q) * k1
	print("qk is: ")
	print(qk)
	
	'''
	# Check if a solution exists:
	if (abs(  ( (k12[0,0]**2) - 1) < eps) ):
		print("NO SOLUTION FOR SUBPROBLEM2 ***1***")
		theta1 = [None, None]
		theta2 = [None, None]
		return theta1, theta2
	'''
	
	# VALIDATED
	a = matrix([ [k12[0,0], -1], [-1, k12[0,0]] ]) * ( matrix([ [pk[0,0]], [qk[0,0]] ])) / ( (k12[0, 0]**2) - 1)
	print("a is: " + str(a))
	
	# VALIDATED
	bb = ( (linalg.norm(p) ** 2) - (linalg.norm(a) ** 2) - 2 * a[0, 0] * a[1, 0] * k12[0, 0])
	print("bb is: " + str(bb))
	
	# BB cannot be negative!
	if abs(bb) < eps:
		bb = 0
	
	if bb < 0:
		print("NO SOLUTION FOR SUBPROBLEM2 ***2***")
		theta1 = [None, None]
		theta2 = [None, None]
		return theta1, theta2
		
	# Check if there is only 1 solution: - VALIDATED
	g = sqrt(bb) / (linalg.norm(cross(transpose(k1), transpose(k2))))
	print("g is: " + str(g))
	if abs(g) < eps:
		c1 = matrix([k1, k2, cross(transpose(k1), transpose(k2))]) * matrix([ [a], [g] ])
		theta1 = matrix([subproblem1(k2, p, c1), None])
		theta2 = matrix([-1 * subproblem1(k1, q, c1), None])
		return theta1, theta2
	
	# General case: 2 solutions
	theta1 = matrix(zeros([1, 2]))
	theta2 = matrix(zeros([1, 2]))
	
	c1 = matrix([k1, k2, cross(transpose(k1), transpose(k2))]) * matrix([ [a[0,0]], [a[1,0]], [g] ])
	c2 = matrix([k1, k2, cross(transpose(k1), transpose(k2))]) * matrix([ [a[0,0]], [a[1,0]], [-g] ])
	
	theta2[0,0] = subproblem1(k2, p, c1)
	theta2[0,1] = subproblem1(k2, p, c2)
	
	print("c1 is: ")
	print(c1)
	print("c2 is: ")
	print(c2)
	print("theta2 is: ")
	print(theta2)

	'''	
	theta1[0,0] = -1 * subproblem1(k1, q, c1)
	theta1[0,1] = -1 * subproblem1(k1, q, c2)
	
	print("theta1 is: ")
	print(theta1)
	'''	

	return theta1, theta2
	
	print("\nNOW LEAVING SUBPROBLEM2")
	
'''
Function to calculate the inverse kinematics.  This function takes in two 
arguments: 
1) T06 (Homogenous Input) - a 4 x 4 numpy matrix
2) th_p (Previous Input) - a 1 x 6 numpy matrix
'''
def inverse_kinematics(T06, th_p):
	
	# Numpy Matrix to store the working solution (7 x 8 matrix):
	th_ik = matrix(zeros([7, 8]))

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
	print("dx is: ")
	print(dx)
	
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
	
	# We now have to solve for thetas 1 and 2:
	theta1_1, theta2_1 = subproblem2(matrix([ [0], [0], [1] ]), 
									 matrix([ [0], [1], [0] ]), 
									 matrix([ [0], [0], [a_2] ]) + matrix([ [-d_4 * sin(th_ik[2, 0])], 
																		  [0], 
																		  [d_4 * cos(th_ik[2, 0])] ]), 
									d_elbow)
									
	theta1_2, theta2_2 = subproblem2(matrix([ [0], [0], [1] ]), 
									 matrix([ [0], [1], [0] ]), 
									 matrix([ [0], [0], [a_2] ]) + matrix([ [-d_4 * sin(th_ik[2, 4])],
																			[0],
																			[d_4 * cos(th_ik[2, 4])] ]),
									d_elbow)

if __name__ == '__main__':
	T06 = matrix([ [ 0.4538, -0.8732,  0.1777, -8.0357 ],
				   [-0.8501, -0.3645,  0.3801, 34.8715 ],
				   [-0.2672, -0.3235, -0.9077, 444.2324],
				   [ 0,       0,       0,      1       ] ])
	th_p = matrix([0, 0, 0, 0, 0, 0])
	inverse_kinematics(T06, th_p)


