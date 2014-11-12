#!/usr/bin/python

'''
powerball_constants.py - This file contains length and joint constants
for the Powerball Arm.
	
Bryant Pong
RPI CS Robotics Lab
11/12/14

Last Updated: 11/12/14 - 5:47 PM 
'''

import math

'''
Length constants.  These constants can be found on Page 2 of the file:
"powerball_datasheet".

All these constants are in centimeters (cm).

The reference frame 0 is the base of the robot.
''' 

L1 = 20.5
L2 = 35.0
L3 = 30.5

P01 = L1
P12 = 0.0
P23 = L2
P34 = 0.0
P45 = L3
P56 = 0.0
P6T = 0.0

'''
Joint limits.  These limits are in radians.  Joint 1 is the base of the 
Powerball; Joint 6 is the end-effector wrist.
'''
DEGS_TO_RADS = math.pi / 180.0

JOINT_1_MIN = -170.0 * DEGS_TO_RADS
JOINT_1_MAX = 170.0 * DEGS_TO_RADS

JOINT_2_MIN = -110.0 * DEGS_TO_RADS
JOINT_2_MAX = 110.0 * DEGS_TO_RADS

JOINT_3_MIN = -155.0 * DEGS_TO_RADS
JOINT_3_MAX = 155.0 * DEGS_TO_RADS

JOINT_4_MIN = -170.0 * DEGS_TO_RADS
JOINT_4_MAX = 170.0 * DEGS_TO_RADS

JOINT_5_MIN = -140.0 * DEGS_TO_RADS
JOINT_5_MAX = 140.0 * DEGS_TO_RADS

JOINT_6_MIN = -170.0 * DEGS_TO_RADS
JOINT_6_MAX = 170.0 * DEGS_TO_RADS

'''
Rotation axes.  These axes follow the following convention:

(z)
^    (y)
|   /
|  / 
| / 
|/
----------->(x)
'''

JOINT_1_ROTATION_AXIS = [0, 0, 1]
JOINT_2_ROTATION_AXIS = [0, 1, 0]
JOINT_3_ROTATION_AXIS = [0, 1, 0]
JOINT_4_ROTATION_AXIS = [1, 0, 0]
JOINT_5_ROTATION_AXIS = [0, 1, 0]
JOINT_6_ROTATION_AXIS = [1, 0, 0]
   

