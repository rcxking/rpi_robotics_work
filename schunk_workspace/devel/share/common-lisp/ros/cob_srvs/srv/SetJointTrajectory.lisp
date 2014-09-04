; Auto-generated. Do not edit!


(cl:in-package cob_srvs-srv)


;//! \htmlinclude SetJointTrajectory-request.msg.html

(cl:defclass <SetJointTrajectory-request> (roslisp-msg-protocol:ros-message)
  ((trajectory
    :reader trajectory
    :initarg :trajectory
    :type trajectory_msgs-msg:JointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectory)))
)

(cl:defclass SetJointTrajectory-request (<SetJointTrajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJointTrajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJointTrajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<SetJointTrajectory-request> is deprecated: use cob_srvs-srv:SetJointTrajectory-request instead.")))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <SetJointTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:trajectory-val is deprecated.  Use cob_srvs-srv:trajectory instead.")
  (trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJointTrajectory-request>) ostream)
  "Serializes a message object of type '<SetJointTrajectory-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJointTrajectory-request>) istream)
  "Deserializes a message object of type '<SetJointTrajectory-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJointTrajectory-request>)))
  "Returns string type for a service object of type '<SetJointTrajectory-request>"
  "cob_srvs/SetJointTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointTrajectory-request)))
  "Returns string type for a service object of type 'SetJointTrajectory-request"
  "cob_srvs/SetJointTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJointTrajectory-request>)))
  "Returns md5sum for a message object of type '<SetJointTrajectory-request>"
  "098b55597ea8f8573e4c0bab09cb9bce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJointTrajectory-request)))
  "Returns md5sum for a message object of type 'SetJointTrajectory-request"
  "098b55597ea8f8573e4c0bab09cb9bce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJointTrajectory-request>)))
  "Returns full string definition for message of type '<SetJointTrajectory-request>"
  (cl:format cl:nil "trajectory_msgs/JointTrajectory trajectory~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJointTrajectory-request)))
  "Returns full string definition for message of type 'SetJointTrajectory-request"
  (cl:format cl:nil "trajectory_msgs/JointTrajectory trajectory~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJointTrajectory-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJointTrajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJointTrajectory-request
    (cl:cons ':trajectory (trajectory msg))
))
;//! \htmlinclude SetJointTrajectory-response.msg.html

(cl:defclass <SetJointTrajectory-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:integer
    :initform 0)
   (errorMessage
    :reader errorMessage
    :initarg :errorMessage
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass SetJointTrajectory-response (<SetJointTrajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJointTrajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJointTrajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<SetJointTrajectory-response> is deprecated: use cob_srvs-srv:SetJointTrajectory-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetJointTrajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:success-val is deprecated.  Use cob_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'errorMessage-val :lambda-list '(m))
(cl:defmethod errorMessage-val ((m <SetJointTrajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:errorMessage-val is deprecated.  Use cob_srvs-srv:errorMessage instead.")
  (errorMessage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJointTrajectory-response>) ostream)
  "Serializes a message object of type '<SetJointTrajectory-response>"
  (cl:let* ((signed (cl:slot-value msg 'success)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'errorMessage) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJointTrajectory-response>) istream)
  "Deserializes a message object of type '<SetJointTrajectory-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'success) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'errorMessage) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJointTrajectory-response>)))
  "Returns string type for a service object of type '<SetJointTrajectory-response>"
  "cob_srvs/SetJointTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointTrajectory-response)))
  "Returns string type for a service object of type 'SetJointTrajectory-response"
  "cob_srvs/SetJointTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJointTrajectory-response>)))
  "Returns md5sum for a message object of type '<SetJointTrajectory-response>"
  "098b55597ea8f8573e4c0bab09cb9bce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJointTrajectory-response)))
  "Returns md5sum for a message object of type 'SetJointTrajectory-response"
  "098b55597ea8f8573e4c0bab09cb9bce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJointTrajectory-response>)))
  "Returns full string definition for message of type '<SetJointTrajectory-response>"
  (cl:format cl:nil "int64 success~%std_msgs/String errorMessage~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJointTrajectory-response)))
  "Returns full string definition for message of type 'SetJointTrajectory-response"
  (cl:format cl:nil "int64 success~%std_msgs/String errorMessage~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJointTrajectory-response>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'errorMessage))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJointTrajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJointTrajectory-response
    (cl:cons ':success (success msg))
    (cl:cons ':errorMessage (errorMessage msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetJointTrajectory)))
  'SetJointTrajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetJointTrajectory)))
  'SetJointTrajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointTrajectory)))
  "Returns string type for a service object of type '<SetJointTrajectory>"
  "cob_srvs/SetJointTrajectory")