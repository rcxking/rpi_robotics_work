#!/usr/bin/python

# Standard Python Libraries:
import sys

# ROS Libraries:
import rospy
from schunk_api.srv import *

def schunk_api_client(x, y, z):
	rospy.wait_for_service("PositionAPICoordSpace")
	try:
		schunk_api_call = rospy.ServiceProxy("PositionAPICoordSpace", PositionAPICoordSpace)
		response = schunk_api_call(x, y, z)
		return 0
	except rospy.ServiceException, e:
		print("Service call failed: %s") % e

if __name__ == "__main__":	
	# Expecting 3 arguments:
	if len(sys.argv) == 4:
		x = float(sys.argv[1])
		y = float(sys.argv[2])
		z = float(sys.argv[3])
	else:
		# Print usage information:
		print("Usage: <x> <y> <z>")
		sys.exit(1)

	print("Now requesting Powerball Arm to Move:")
	schunk_api_client(x,y,z)
