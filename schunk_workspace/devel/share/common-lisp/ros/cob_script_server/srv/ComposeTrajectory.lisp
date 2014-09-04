; Auto-generated. Do not edit!


(cl:in-package cob_script_server-srv)


;//! \htmlinclude ComposeTrajectory-request.msg.html

(cl:defclass <ComposeTrajectory-request> (roslisp-msg-protocol:ros-message)
  ((component_name
    :reader component_name
    :initarg :component_name
    :type cl:string
    :initform "")
   (parameter_name
    :reader parameter_name
    :initarg :parameter_name
    :type cl:string
    :initform ""))
)

(cl:defclass ComposeTrajectory-request (<ComposeTrajectory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ComposeTrajectory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ComposeTrajectory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_script_server-srv:<ComposeTrajectory-request> is deprecated: use cob_script_server-srv:ComposeTrajectory-request instead.")))

(cl:ensure-generic-function 'component_name-val :lambda-list '(m))
(cl:defmethod component_name-val ((m <ComposeTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_script_server-srv:component_name-val is deprecated.  Use cob_script_server-srv:component_name instead.")
  (component_name m))

(cl:ensure-generic-function 'parameter_name-val :lambda-list '(m))
(cl:defmethod parameter_name-val ((m <ComposeTrajectory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_script_server-srv:parameter_name-val is deprecated.  Use cob_script_server-srv:parameter_name instead.")
  (parameter_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ComposeTrajectory-request>) ostream)
  "Serializes a message object of type '<ComposeTrajectory-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'component_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'component_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parameter_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parameter_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ComposeTrajectory-request>) istream)
  "Deserializes a message object of type '<ComposeTrajectory-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'component_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'component_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameter_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parameter_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ComposeTrajectory-request>)))
  "Returns string type for a service object of type '<ComposeTrajectory-request>"
  "cob_script_server/ComposeTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComposeTrajectory-request)))
  "Returns string type for a service object of type 'ComposeTrajectory-request"
  "cob_script_server/ComposeTrajectoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ComposeTrajectory-request>)))
  "Returns md5sum for a message object of type '<ComposeTrajectory-request>"
  "c320ebb295f4a80333624b0ea716b1c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ComposeTrajectory-request)))
  "Returns md5sum for a message object of type 'ComposeTrajectory-request"
  "c320ebb295f4a80333624b0ea716b1c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ComposeTrajectory-request>)))
  "Returns full string definition for message of type '<ComposeTrajectory-request>"
  (cl:format cl:nil "string component_name~%string parameter_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ComposeTrajectory-request)))
  "Returns full string definition for message of type 'ComposeTrajectory-request"
  (cl:format cl:nil "string component_name~%string parameter_name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ComposeTrajectory-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'component_name))
     4 (cl:length (cl:slot-value msg 'parameter_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ComposeTrajectory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ComposeTrajectory-request
    (cl:cons ':component_name (component_name msg))
    (cl:cons ':parameter_name (parameter_name msg))
))
;//! \htmlinclude ComposeTrajectory-response.msg.html

(cl:defclass <ComposeTrajectory-response> (roslisp-msg-protocol:ros-message)
  ((trajectory
    :reader trajectory
    :initarg :trajectory
    :type trajectory_msgs-msg:JointTrajectory
    :initform (cl:make-instance 'trajectory_msgs-msg:JointTrajectory)))
)

(cl:defclass ComposeTrajectory-response (<ComposeTrajectory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ComposeTrajectory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ComposeTrajectory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_script_server-srv:<ComposeTrajectory-response> is deprecated: use cob_script_server-srv:ComposeTrajectory-response instead.")))

(cl:ensure-generic-function 'trajectory-val :lambda-list '(m))
(cl:defmethod trajectory-val ((m <ComposeTrajectory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_script_server-srv:trajectory-val is deprecated.  Use cob_script_server-srv:trajectory instead.")
  (trajectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ComposeTrajectory-response>) ostream)
  "Serializes a message object of type '<ComposeTrajectory-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'trajectory) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ComposeTrajectory-response>) istream)
  "Deserializes a message object of type '<ComposeTrajectory-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'trajectory) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ComposeTrajectory-response>)))
  "Returns string type for a service object of type '<ComposeTrajectory-response>"
  "cob_script_server/ComposeTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComposeTrajectory-response)))
  "Returns string type for a service object of type 'ComposeTrajectory-response"
  "cob_script_server/ComposeTrajectoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ComposeTrajectory-response>)))
  "Returns md5sum for a message object of type '<ComposeTrajectory-response>"
  "c320ebb295f4a80333624b0ea716b1c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ComposeTrajectory-response)))
  "Returns md5sum for a message object of type 'ComposeTrajectory-response"
  "c320ebb295f4a80333624b0ea716b1c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ComposeTrajectory-response>)))
  "Returns full string definition for message of type '<ComposeTrajectory-response>"
  (cl:format cl:nil "trajectory_msgs/JointTrajectory trajectory~%~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ComposeTrajectory-response)))
  "Returns full string definition for message of type 'ComposeTrajectory-response"
  (cl:format cl:nil "trajectory_msgs/JointTrajectory trajectory~%~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectory~%Header header~%string[] joint_names~%JointTrajectoryPoint[] points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: trajectory_msgs/JointTrajectoryPoint~%# Each trajectory point specifies either positions[, velocities[, accelerations]]~%# or positions[, effort] for the trajectory to be executed.~%# All specified values are in the same order as the joint names in JointTrajectory.msg~%~%float64[] positions~%float64[] velocities~%float64[] accelerations~%float64[] effort~%duration time_from_start~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ComposeTrajectory-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'trajectory))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ComposeTrajectory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ComposeTrajectory-response
    (cl:cons ':trajectory (trajectory msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ComposeTrajectory)))
  'ComposeTrajectory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ComposeTrajectory)))
  'ComposeTrajectory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComposeTrajectory)))
  "Returns string type for a service object of type '<ComposeTrajectory>"
  "cob_script_server/ComposeTrajectory")