#!/usr/bin/python

'''
This node provides Position Control API access to the Schunk Powerball Arm.

Bryant Pong
RPI CS Robotics Lab
10/17/14

Last Updated: 10/20/14 - 7:38 PM   
'''

# Standard Python Libraries:

# ROS Libraries:
import rospy

# Custom ROS Messages:
from schunk_api.srv import *

# Fraunhofer Libraries:
from cob_sound.msg import *
from cob_script_server.msg import *
from cob_srvs.srv import *

'''
This function sends a position control request to the Powerball.  The request
message consists of 6 float64 parameters representing the target angles for
the joints.
'''  
def api_handler(req):

	'''
	This simple_script_server is a custom library that was created by 
	the Fraunhofer institute.  An action_handle will listen for position
	commands.
	'''
	ah = simple_script_server.action_handle("move", "arm", "home", False, False)
	if False:
		return ah
	else:
		ah.set_active()

	# Form a list of the target joint angles:
	targetJointAngles = [req.joint1Position, req.joint2Position, req.joint3Position, req.joint4Position, req.joint5Position, req.joint6Position]

	'''
    Encapsulate the target jointangles into another list (this forms a trajectory)
	'''
	traj = [targetJointAngles]

	# Generate the trajectory message to send to the Powerball:
	traj_msg = JointTrajectory()
	traj_msg.header.stamp = rospy.Time.now() + rospy.Duration(0.5)
	traj_msg.joint_names = ['arm_1_joint', 'arm_2_joint', 'arm_3_joint', 'arm_4_joint', 'arm_5_joint', 'arm_6_joint']
	point_nr = 0

	# Set the target velocities of the target joints.  They are set to 0 to denote stopping at the destinations:
	for point in traj:
		point_nr += 1
		point_msg = JointTrajectoryPoint()
		

def api_server():
	# Initialize the API Server node:
	rospy.init_node('schunk_api_server')
	s = rospy.Service('PositionAPI', PositionAPI, api_handler)
	rospy.spin() 

# Main function.  This node will listen for a    
if __name__ == '__main__':
	api_server()
