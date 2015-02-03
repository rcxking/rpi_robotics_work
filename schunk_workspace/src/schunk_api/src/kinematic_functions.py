'''
These functions provide forward and inverse kinematics solutions. 

Bryant Pong
RPI CS Robotics Lab
11/12/14

Last Updated: 2/3/15 - 6:17 PM
'''

from powerball_constants import *
import math
import numpy as np

''' 
This function takes in a numpy array representing a 3x1 vector and returns
a 3 x 3 matrix representing kcross. 

Arguments:
vector: a numpy array of the form: array([[x],
                                          [y],
										  [z]])

TESTED/VALIDATED 2/3/15 - 6:23 PM
'''
def kcross(vector):
	return np.matrix( ([0, -1 * vector[2][0], vector[1][0]], 
	                  [vector[2][0], 0, -1 * vector[0][0]],
					  [-1 * vector[1][0], vector[0][0], 0]), dtype = float)

'''
This function is an implementation of the Euler-Rodrigues formula for 3D
rotations.

Arguments:
rotAxis: The rotation axis (in the form of a numpy column array) 
angleToRotate: Angle to rotate (must be in radians)

TESTED/VALIDATED 2/3/15 - 6:28 PM
'''
def rot3D(rotAxis, angleToRotate):
	identity3 = np.matrix( ([1, 0, 0], [0, 1, 0], [0, 0, 1]), dtype=float )
	return identity3 + (math.sin(angleToRotate) * kcross(rotAxis)) + ( (1 - math.cos(angleToRotate)) * kcross(rotAxis) * kcross(rotAxis))

'''
Calculate the forward kinematics of the Powerball Arm.  The forward kinematics
is found by passing in a list of the joint angles.

Parameters:
jointAngles: A numpy array of 6 floating point numbers representing the 6 joint angles (in radians)
'''
def fkine(jointAngles):

	# Extract the joint angles from the list:
	q1 = jointAngles[0]
	q2 = jointAngles[1]
	q3 = jointAngles[2]
	q4 = jointAngles[3]
	q5 = jointAngles[4]
	q6 = jointAngles[5]

	print("q1: " + str(q1))
	print("q2: " + str(q2))
	print("q3: " + str(q3))
	print("q4: " + str(q4))
	print("q5: " + str(q5))
	print("q6: " + str(q6))

	# The rotation matrices for the joints:
	R01 = rot3D(JOINT_1_ROTATION_AXIS, q1)
	R12 = rot3D(JOINT_2_ROTATION_AXIS, q2)
	R23 = rot3D(JOINT_3_ROTATION_AXIS, q3)
	R34 = rot3D(JOINT_4_ROTATION_AXIS, q4)
	R45 = rot3D(JOINT_5_ROTATION_AXIS, q5)
	R56 = rot3D(JOINT_6_ROTATION_AXIS, q6)

	print("R01: \n" + str(R01))
	print("R12: \n" + str(R12))
	print("R23: \n" + str(R23))
	print("R34: \n" + str(R34))
	print("R45: \n" + str(R45))
	print("R56: \n" + str(R56))
		
	R02 = R01 * R12
	R03 = R02 * R23
	R04 = R03 * R34
	R05 = R04 * R45
	R06 = R05 * R56

	print("R02: \n" + str(R02))
	print("R03: \n" + str(R03))
	print("R04: \n" + str(R04))
	print("R05: \n" + str(R05))
	print("R06: \n" + str(R06))

 
	# Calculate the translational forward kinematics:
	transFK = P01 + (R01 * P12) + (R02 * P23) + (R03 * P34) + (R04 * P45) + (R05 * P56) + (R05 * P6T)
	# Calculate the rotational forward kinematics:
	rotFK = sum(jointAngles) 

	return rotFK, transFK.ravel().tolist()[0]

# Inverse Kinematics Functions

'''
Subproblem 0: Find the angle between two vectors.

Inputs:
p: 1st Vector (Python list of 3 floats)
q: 2nd Vector (Python list of 3 floats)
k: Rotation Axis (Python list of 3 floats)
'''
def subproblem0(p, q, k):

	# Convert P, Q, and K into Numpy Matrices:
	matP = np.matrix(p)
	matQ = np.matrix(q)	
	matK = np.matrix(k)

	# Normalize the vectors p and q:
	normP = matP / np.linalg.norm(matP)
	normQ = matQ / np.linalg.norm(matQ)

	# Calculate the angle between p and q:
	theta = 2 * math.atan2( (np.linalg.norm(normP - normQ)), (np.linalg.norm(normP + normQ)))

	# A Numpy Representation of the Rotation Axis:
	numpyMatrixK = np.matrix((k[0], k[1], k[2]), dtype=float).T

	# Determine the sign of the angle:
	temp = numpyMatrixK * np.cross(p, q)
	# Indices is a matrix that helps filter out for negative values 
	indices = np.where(temp < 0)
	finalSignMatrix = temp[indices]

	# The crossproduct was negative; reverse the sign of theta:
	if temp[2,2] < 0:
		theta *= -1

	return theta

'''
subproblem1() finds the angle between two vectors in 3D Space.

Arguments:
P: 1st Vector (Python List of 3 floats)
Q: 2nd Vector (Python List of 3 floats)
K: Rotation Axis (Python List of 3 floats)
'''
def subproblem1(p, q, k):
		
	# Normalize all arguments:
	normP = p / np.linalg.norm(p)
	normQ = q / np.linalg.norm(q)
	normK = k / np.linalg.norm(k)

	print("normP: " + str(normP))
	print("normQ: " + str(normQ))
	print("normK: " + str(normK))

	# Calculate the modified P and Q vectors:
	pPrime = normP - (np.dot(normP, normK) * normK)
	qPrime = normQ - (np.dot(normQ, normK) * normK)	 

	theta = subproblem0(pPrime, qPrime, k)

	return theta

'''
subproblem2() finds 0, 1, or 2 solutions between spinning two vectors
around two separate rotation axis.

Arguments:

'''
def subproblem2(p, q, k1, k2):

	# Normalize all arguments:
	normP = p / np.linalg.norm(p)
	normQ = q / np.linalg.norm(q)
	normK1 = k1 / np.linalg.norm(k1)
	normK2 = k2 / np.linalg.norm(k2)

	# DEBUG ONLY - Print out the normalized arguments:
	print("normP: " + str(normP))
	print("normQ: " + str(normQ))
	print("normK1: " + str(normK1))
	print("normK2: " + str(normK2))

	# Solve for alpha and beta:

	temp = np.matrix([ [1, np.dot(normK1, normK2)], \
	                   [np.dot(normK2, normK1), 1] ])
	print("temp is: " + str(temp)) # TEST PASSED

	rhsNum = normK1 * np.transpose(np.matrix([normQ[0], normQ[1], normQ[2]]))
	rhsNum = rhsNum[0, 0]
	rhsDen = normK2 * np.transpose(np.matrix([normP[0], normP[1], normP[2]]))
	rhsDen = rhsDen[0, 0]

	print("rhsNum is: " + str(rhsNum))
	print("rhsDen is: " + str(rhsDen))

	alphaBeta = (1 / np.linalg.det(temp)) * \
	            np.matrix([ [1, -np.dot(normK1, normK2)], \
				            [-np.dot(normK1, normK2), 1] ]) * \
				np.transpose(np.matrix([rhsNum, rhsDen]))
				
	print("alphaBeta is: " + str(alphaBeta)) # TEST PASSED

	# Store the values of alpha and beta:
	alpha = alphaBeta[0,0]
	beta = alphaBeta[1,0]

	print("alpha is: " + str(alpha))
	print("beta is: " + str(beta))

	# Now let's calculate the number of solutions:
	denominator = (alpha**2) + (2*alpha*beta*np.dot(k1, k2)) + (beta**2)
	print("denominator is: " + str(denominator)) # TEST PASSED

	# Case 1: No solutions:
	if np.linalg.norm(p) ** 2 < denominator:
		print("NO SOLUTIONS!")
		return [[-9001, -9001], [-9001, -9001]]
	elif np.linalg.norm(p) ** 2 == denominator:
		# Case 2: 1 Solution found (gamma is 0) 
		print("1 Solution found!")
		
		z = (alpha * normK1) + (beta * normK2)
		print("z is: " + str(z))

		# Solve for theta 1's and 2's:
		theta1 = -1 * subproblem1(q, z, [normK1[0], normK1[1], normK1[2]])
		theta2 = subproblem1(p, z, [normK2[0], normK2[1], normK2[2]]) 
		
		return [[theta1, theta1], [theta2, theta2]]
	else:
		# Case 3: 2 Solutions Found
		print("2 solutions found!")

		# Find the gamma values:
		gamma1 = math.sqrt((np.linalg.norm([normP[0], normP[1], normP[2]])**2 \
		  - denominator)) / np.linalg.norm(np.cross([normK1[0], normK1[1], normK1[2]], [normK2[0], normK2[1], normK2[2]]))
		gamma2 = math.sqrt((np.linalg.norm([normP[0], normP[1], normP[2]])**2 \
		  - denominator)) / (-1* np.linalg.norm(np.cross([normK1[0], normK1[1], normK1[2]], [normK2[0], normK2[1], normK2[2]])))
		print("gamma1: " + str(gamma1))
		print("gamma2: " + str(gamma2))

		# We have 2 equations for z:
		z1 = (alpha * normK1) + (beta * normK2) + (gamma1 * np.cross([normK1[0], normK1[1], normK1[2]], [normK2[0], normK2[1], normK2[2]]))
		z2 = (alpha * normK1) + (beta * normK2) + (gamma2 * np.cross([normK1[0], normK1[1], normK1[2]], [normK2[0], normK2[1], normK2[2]]))

		# We will have two pairs of answers:
		theta11 = -1*subproblem1(q, z1, [normK1[0], normK1[1], normK1[2]])
		theta12 = -1*subproblem1(q, z2, [normK1[0], normK1[1], normK1[2]])
		theta21 = subproblem1(p, z1, [normK2[0], normK2[1], normK2[2]])
		theta22 = subproblem1(p, z2, [normK2[0], normK2[1], normK2[2]])

		print("Inside subproblem2: ")
		print("theta11: " + str(theta11))
		print("theta12: " + str(theta12))
		print("theta21: " + str(theta21))
		print("theta22: " + str(theta22))
		print("Done inside subproblem2")
		return [[theta11, theta21], [theta12, theta22]]

'''
This function creates a 4x4 Homogenous Transformation Matrix from Denavit-
Hartenberg parameters.  
'''
def homoTrans(th, d, a, al):
	return np.matrix([ [math.cos(th), -math.sin(th)*math.cos(al), \
	                    math.sin(th)*math.sin(al), a*math.cos(th)], \
					   [math.sin(th), math.cos(th)*math.cos(al), \
					    -math.cos(th)*math.sin(al), a*math.sin(th)], \
					   [0, math.sin(al), math.cos(al), d],
					   [0, 0, 0, 1] ])

'''
This function calculates the inverse kinematics for the Powerball arm.

Arguments:
T06 - a numpy.matrix containing the 4x4 homogenous transformation matrix.
thP - a Python list containing the current joint angles.   
'''

def ikine(T06, thP):
	
	# Create the matrix that will hold the Inverse Kinematics solution:
	thIK = np.zeros([7, 8])

	# Debug Only - Print out thIK:
	#print("thIK: ")
	#print(thIK)

	# This list holds the joint limits of the Powerball in radians:
	thLimits = [JOINT_1_MAX, JOINT_2_MAX, JOINT_3_MAX, JOINT_4_MAX, JOINT_5_MAX, JOINT_6_MAX]	 

	# Denavit-Hartenberg Parameters for the Powerball:
	d1 = 205
	a2 = 350
	d4 = 305
	d6 = 75

	# Solve for theta 3 (Joint 3 angle): 	 

	# Vector from the spherical wrist to the tooltip:
	dx = np.matrix([ [T06[0, 0], T06[0, 1], T06[0, 2] ], \
	                 [T06[1, 0], T06[1, 1], T06[1, 2] ], \
					 [T06[2, 0], T06[2, 1], T06[2, 2] ] ]) * \
					 np.transpose(np.matrix([0, 0, d6]))
	dx = [dx[0, 0], dx[1, 0], dx[2, 0]]
	#print("dx: " + str(dx)) # TEST PASSED

	# Vector with the tool tip distance and base distance removed:
	dElbow = np.array([T06[0, 3], T06[1, 3], T06[2, 3]]) - np.array(dx) - \
	         np.array([0, 0, d1])
	dElbow = [dElbow[0], dElbow[1], dElbow[2]]
	#print("dElbow is: " + str(dElbow)) # TEST PASSED

	dElbowNorm = np.linalg.norm(dElbow)	
	#print("dElbowNorm is: " + str(dElbowNorm)) # TEST PASSED

	# Angle of Elbow (found by Law of Cosines)
	temp = math.pi - math.acos( ( (a2**2)+(d4**2)-(dElbowNorm**2))/(2*a2*d4))
	#print("temp is: " + str(temp))

	# 8 Solutions - first 4 rows are for elbow up; bottom 4 are elbow down:
	thIK[2][0] = thIK[2][1] = thIK[2][2] = thIK[2][3] = temp
	thIK[6][0] = thIK[6][0] + 2**1
	thIK[6][1] = thIK[6][1] + 2**1
	thIK[6][2] = thIK[6][2] + 2**1
	thIK[6][3] = thIK[6][3] + 2**1
	thIK[2][4] = thIK[2][5] = thIK[2][6] = thIK[2][7] = -temp
	#print("thIK: " + str(thIK))

	# Solve for Joints 1 and 2:
	elbowUpPVector = np.array([0, 0, a2]) + \
	                 np.array([-d4*math.sin(thIK[2][0]), 0, d4*math.cos(thIK[2][0])])  
	elbowUpPVector = [elbowUpPVector[0], elbowUpPVector[1], elbowUpPVector[2]]
	#print("elbowUpPVector: " + str(elbowUpPVector)) # TEST PASSED
	
	elbowDownPVector = np.array([0, 0, a2]) + \
	                   np.array([-d4*math.sin(thIK[2][4]), 0, d4*math.cos(thIK[2][4])])
	elbowDownPVector = [elbowDownPVector[0], elbowDownPVector[1], elbowDownPVector[2]]
	#print("elbowDownPVector: " + str(elbowDownPVector))

	# Call subproblem 2 to solve for Joint angles 1 and 2:
	elbowUpSolution = subproblem2(elbowUpPVector, dElbow, [0, 0, 1], [0, 1, 0])
	elbowDownSolution = subproblem2(elbowDownPVector, dElbow, [0, 0, 1], [0, 1, 0])

	#print("elbowUpSolution: " + str(elbowUpSolution))
	#print("elbowDownSolution: " + str(elbowDownSolution))

	# Replace invalid solutions from subproblem2:
	theta11 = elbowUpSolution[0]
	theta21 = elbowUpSolution[1]
	theta12 = elbowDownSolution[0]
	theta22 = elbowDownSolution[1]

	if theta11[0] == -9001 or theta11[1] == -9001:
		theta11 = [thP[0], thP[0]]
	if theta12[0] == -9001 or theta12[1] == -9001:
		theta12 = [thP[0], thP[0]]
	if theta21[0] == -9001 or theta21[1] == -9001:
		theta21 = [thP[0], thP[0]]
	if theta22[0] == -9001 or theta22[1] == -9001:
		theta22 = [thP[0], thP[0]]

	#print(thIK[0, 0:4])

	print("theta11: " + str(theta11))
	print("theta21: " + str(theta21))
	print("theta12: " + str(theta12))
	print("theta22: " + str(theta22))
	
	# Set the solutions for shoulder right:
	thIK[0, 0:4] = [theta11[0], theta11[1], theta11[0], theta11[1]]
	thIK[6, [0,2]] = thIK[6, [0,2]] + 2**0
	thIK[0, 4:8] = [theta12[0], theta12[1], theta12[0], theta12[1]]	
	thIK[6, [4,6]] = thIK[6, [4,6]] + 2**0
	thIK[1, 0:4] = [theta21[0], theta21[1], theta21[0], theta21[1]]
	thIK[1, 4:8] = [theta22[0], theta22[1], theta22[0], theta22[0]]	 

	print("After setting the solutions for shoulder right and shoulder left")
	print("thIK is: ") 
	print(thIK)

	# Solve for Joint 4, 5, 6 Angles:
	for z in [0, 1, 4, 5]:
		th1 = thIK[0, z]
		th2 = thIK[1, z]
		th3 = thIK[2, z]			

		# Joint 1 Transformation Matrix:
		T01 = homoTrans(th1, d1, 0, -math.pi / 2)
		# Joint 2 Transformation Matrix:
		T12 = homoTrans(th2 - math.pi / 2, 0, a2, math.pi) 
		# Joint 3 Transformation Matrix:
		T23 = homoTrans(th3 - math.pi / 2, 0, 0, -math.pi / 2)	 

		T02 = T01*T12
		T03 = T02*T23

		'''
		T03 = np.matrix([ [0, 1, 2, 3], \
		                  [4, 5, 6, 7], \
						  [8, 9, 10, 11], \
						  [12, 13, 14, 15] ])
		'''

		t03Rot = T03[0:3, 0:3].T
		print("t03Rot:")
		print(t03Rot)
		thirdRow = -T03[0:3, 0:3].T*T03[0:3, 3]
		print("thirdRow:")
		print(thirdRow)
	
		Twrist = np.matrix([ [t03Rot[0,0], t03Rot[0,1], t03Rot[0,2], \
		                      thirdRow[0]], \
							 [t03Rot[1,0], t03Rot[1,1], t03Rot[1,2], \
							  thirdRow[1]], \
							 [t03Rot[2,0], t03Rot[2,1], t03Rot[2,2], \
							  thirdRow[2]], \
							 [0, 0, 0, 1] ])
		print("Twrist:")
		print(Twrist) # TWRIST TESTED

		# Remove first 3 joint angles to isolate joints 4, 5, 6 angles:
		thIK[3,z] = math.atan2(-Twrist[2,3], -Twrist[0,2])
		thIK[6,z] = thIK[6,z]+2**2
		# Wrist up:
		thIK[4,z] = math.acos(Twrist[2,2])
		thIK[5,z] = math.atan2(-Twrist[2,1], Twrist[2,0])
		thIK[3,z+2] = math.atan2(Twrist[1,2], Twrist[0,2])
		# Wrist down:
		thIK[4,z+2] = -math.acos(Twrist[2,2])
		thIK[5,z+2] = math.atan2(Twrist[2,1], -Twrist[2,0])

		print("Final Twrist:")
		print(Twrist)

	# Finally, take into account any joint limits and find closest solutions:
	counter = 0		
	tempOut = np.zeros([7,8])

	for x in range(8):
		# Check the joint limits:
		if sum(abs(thIK[0:6, x]) <= thLimits) == 6:
			tempOut[0:7, counter] = thIK[0:7, x]
			counter += 1

	print("tempOut: ")
	print(tempOut)

	tempOutLim = tempOut[0:7, 0:counter+1]

	print("tempOutLim is: ")
	print(tempOutLim)

	if max(np.abs(thP)) > 0:
		minDiff = np.zeros([counter+1, 1])
		for x in range(counter+1):
			minDiff[x] = np.linalg.norm(tempOutLim[0:6, x].T - thP)

		thOut = tempOutLim[minDiff == min(minDiff)]
	else:
		thOut = tempOutLim
	
	return thOut
