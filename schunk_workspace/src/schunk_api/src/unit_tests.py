#!/usr/bin/python

'''
unit_test.py 

This script runs unit tests on the kinematics functions to verify that
the functions work properly.  We will be using the "unittest" testing 
framework.

Bryant Pong
RPI CS Robotics Lab
12/21/14

Last Updated: 12/21/14 - 2:11 PM 
'''

import unittest
import numpy
import math
import kinematic_functions as kf

class KinematicTests(unittest.TestCase):

	# The setup() function is run before every test:		
	def setup(self):
		# Create a set of three lists rep. the cardinal axes: 
		self.px = [1, 0, 0]
		self.py = [0, 1, 0]
		self.pz = [0, 0, 1]

	# These 3 tests check the rot3D() function in the X, Y, and Z axis:
	def testRot3DX(self):
		# Rotating the Y - Axis PI/2 rads results in the Y-Axis at (0, 0, 1)
		self.newPY = kf.rot3D([1, 0, 0], math.pi / 2) * self.py
		self.assertEqual(newPY, [0, 0, 1])
		

if __name__ == '__main__':
	unittest.main()
