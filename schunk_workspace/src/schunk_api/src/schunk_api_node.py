#!/usr/bin/python

'''
This node provides Position Control API access to the Schunk Powerball Arm.

Bryant Pong
RPI CS Robotics Lab
10/17/14

Last Updated: 1/29/15 - 3:12 PM   
'''

# Standard Python Libraries:
import time

# ROS Libraries:
import rospy
import roslib
import actionlib
import simple_script_server

# Standard ROS Messages:
from trajectory_msgs.msg import *
from geometry_msgs.msg import *
from move_base_msgs.msg import *
from tf.transformations import *
from std_msgs.msg import String, ColorRGBA
from control_msgs.msg import *

# Custom ROS Messages:
from schunk_api.srv import *

# Fraunhofer Libraries:
from cob_sound.msg import *
from cob_script_server.msg import *
from cob_srvs.srv import *

# Manifests to load:
roslib.load_manifest('cob_script_server')

'''
This function sends a position control request to the Powerball.  The request
message consists of 6 float64 parameters representing the target angles for
the joints.  This API Function works in JOINT SPACE.
'''  
def position_api_joint_space_handler(req):

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
	targetJointAngles = [req.joint1, req.joint2, req.joint3, req.joint4, req.joint5, req.joint6]

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
		point_msg.positions = point
		point_msg.velocities = [0] * 6
		point_msg.time_from_start = rospy.Duration(3 * point_nr)
		traj_msg.points.append(point_msg)

	# Send the position control message to the action server node:
	action_server_name = '/arm_controller/follow_joint_trajectory'

	client = actionlib.SimpleActionClient(action_server_name, FollowJointTrajectoryAction)
	if not client.wait_for_server(rospy.Duration(5)):
		print("Action server not ready within timeout.  Aborting...")
		ah.set_failed(4)
		return ah
	else:
		print("Action server ready!")

	client_goal = FollowJointTrajectoryGoal()
	client_goal.trajectory = traj_msg
	client.send_goal(client_goal)
	ah.set_client(client)

	ah.wait_inside()
	# return ah
	return 0

'''
This function handles a position command given in the coordinate space.  This 
function expects a message (defined in msg/PositionCoordSpace.msg) in the form 
of an (X, Y, Z) tuple, where X/Y/Z are floating point numbers indicating the X, Y, Z
destinations of the end effector. 
'''
def position_api_coord_space_handler(req):
	
	'''
	This simple_script_server is a custom library that was created by
	the Fraunhofer institute.  An action_handle will listen for position commands.
	'''
	ah = simple_script_server.action_handle("move", "arm", "home", False, False)
	if False:
		return ah
	else:
		ah.set_active()
	
	# Get the target (X, Y, Z) coordinates to move to:
	targetCoords = [req.x, req.y, req.z]

	'''
	Currently the Powerball requires a list of the 6 target joint angles to move.
	We can calculate these target joint angles by calling the inverse kinematics
	functions:
	'''

		


def api_server():
	# Initialize the API Server node:
	rospy.init_node('schunk_api_server')
	s1 = rospy.Service('PositionAPIJointSpace', PositionAPIJointSpace, position_api_joint_space_handler)
	s2 = rospy.Service('PositionAPICoordSpace', PositionAPICoordSpace, position_api_coord_space_handler) 
	rospy.spin() 

# Main function.  This node will listen for a position control message and will
# then execute the command.  
if __name__ == '__main__':
	api_server()
