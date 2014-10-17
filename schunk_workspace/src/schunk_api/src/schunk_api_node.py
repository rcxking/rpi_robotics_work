#!/usr/bin/python

'''
This node provides Position Control API access to the Schunk Powerball Arm.

Bryant Pong
RPI CS Robotics Lab
10/17/14

Last Updated: 10/17/14 - 4:22 PM   
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

def api_handler(request):
	pass

def api_server():
	# Initialize the API Server node:
	rospy.init_node('schunk_api_server')
	s = rospy.Service('PositionAPI', PositionAPI, api_handler)
	rospy.spin() 

# Main function.  This node will listen for a    
if __name__ == '__main__':
	api_server()
