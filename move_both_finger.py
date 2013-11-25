#!/usr/bin/python
from lib_robotis import *
import sys

def usage():
	return "The hand has two servos. Please use %s encoder1 encoder2"%sys.argv[0]

if __name__ == '__main__':
	if len(sys.argv) == 3:
		servo_encoder_1 = int(sys.argv[1])
		servo_encoder_2 = int(sys.argv[2])
		dyn = USB2Dynamixel_Device('/dev/ttyUSB0') 
		p = Robotis_Servo( dyn,1 )
		t = Robotis_Servo( dyn,11 )
		p.move_to_encoder(servo_encoder_1)
		t.move_to_encoder(servo_encoder_2)
	else:
		print usage()
		sys.exit(1)

