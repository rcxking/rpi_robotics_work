; Auto-generated. Do not edit!


(cl:in-package cob_srvs-srv)


;//! \htmlinclude GetPoseStampedTransformed-request.msg.html

(cl:defclass <GetPoseStampedTransformed-request> (roslisp-msg-protocol:ros-message)
  ((target
    :reader target
    :initarg :target
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (origin
    :reader origin
    :initarg :origin
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (orientation_override
    :reader orientation_override
    :initarg :orientation_override
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (root_name
    :reader root_name
    :initarg :root_name
    :type cl:string
    :initform "")
   (tip_name
    :reader tip_name
    :initarg :tip_name
    :type cl:string
    :initform ""))
)

(cl:defclass GetPoseStampedTransformed-request (<GetPoseStampedTransformed-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPoseStampedTransformed-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPoseStampedTransformed-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<GetPoseStampedTransformed-request> is deprecated: use cob_srvs-srv:GetPoseStampedTransformed-request instead.")))

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <GetPoseStampedTransformed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:target-val is deprecated.  Use cob_srvs-srv:target instead.")
  (target m))

(cl:ensure-generic-function 'origin-val :lambda-list '(m))
(cl:defmethod origin-val ((m <GetPoseStampedTransformed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:origin-val is deprecated.  Use cob_srvs-srv:origin instead.")
  (origin m))

(cl:ensure-generic-function 'orientation_override-val :lambda-list '(m))
(cl:defmethod orientation_override-val ((m <GetPoseStampedTransformed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:orientation_override-val is deprecated.  Use cob_srvs-srv:orientation_override instead.")
  (orientation_override m))

(cl:ensure-generic-function 'root_name-val :lambda-list '(m))
(cl:defmethod root_name-val ((m <GetPoseStampedTransformed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:root_name-val is deprecated.  Use cob_srvs-srv:root_name instead.")
  (root_name m))

(cl:ensure-generic-function 'tip_name-val :lambda-list '(m))
(cl:defmethod tip_name-val ((m <GetPoseStampedTransformed-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:tip_name-val is deprecated.  Use cob_srvs-srv:tip_name instead.")
  (tip_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPoseStampedTransformed-request>) ostream)
  "Serializes a message object of type '<GetPoseStampedTransformed-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'target) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'origin) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation_override) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'root_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'root_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tip_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tip_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPoseStampedTransformed-request>) istream)
  "Deserializes a message object of type '<GetPoseStampedTransformed-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'target) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'origin) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation_override) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'root_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'root_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tip_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tip_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPoseStampedTransformed-request>)))
  "Returns string type for a service object of type '<GetPoseStampedTransformed-request>"
  "cob_srvs/GetPoseStampedTransformedRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPoseStampedTransformed-request)))
  "Returns string type for a service object of type 'GetPoseStampedTransformed-request"
  "cob_srvs/GetPoseStampedTransformedRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPoseStampedTransformed-request>)))
  "Returns md5sum for a message object of type '<GetPoseStampedTransformed-request>"
  "ed0069a0a6ce5102fc39c3328eef052f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPoseStampedTransformed-request)))
  "Returns md5sum for a message object of type 'GetPoseStampedTransformed-request"
  "ed0069a0a6ce5102fc39c3328eef052f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPoseStampedTransformed-request>)))
  "Returns full string definition for message of type '<GetPoseStampedTransformed-request>"
  (cl:format cl:nil "geometry_msgs/PoseStamped target~%geometry_msgs/PoseStamped origin~%geometry_msgs/Quaternion  orientation_override~%string root_name~%string tip_name~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPoseStampedTransformed-request)))
  "Returns full string definition for message of type 'GetPoseStampedTransformed-request"
  (cl:format cl:nil "geometry_msgs/PoseStamped target~%geometry_msgs/PoseStamped origin~%geometry_msgs/Quaternion  orientation_override~%string root_name~%string tip_name~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPoseStampedTransformed-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'target))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'origin))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation_override))
     4 (cl:length (cl:slot-value msg 'root_name))
     4 (cl:length (cl:slot-value msg 'tip_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPoseStampedTransformed-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPoseStampedTransformed-request
    (cl:cons ':target (target msg))
    (cl:cons ':origin (origin msg))
    (cl:cons ':orientation_override (orientation_override msg))
    (cl:cons ':root_name (root_name msg))
    (cl:cons ':tip_name (tip_name msg))
))
;//! \htmlinclude GetPoseStampedTransformed-response.msg.html

(cl:defclass <GetPoseStampedTransformed-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (result
    :reader result
    :initarg :result
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass GetPoseStampedTransformed-response (<GetPoseStampedTransformed-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPoseStampedTransformed-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPoseStampedTransformed-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<GetPoseStampedTransformed-response> is deprecated: use cob_srvs-srv:GetPoseStampedTransformed-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetPoseStampedTransformed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:success-val is deprecated.  Use cob_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GetPoseStampedTransformed-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:result-val is deprecated.  Use cob_srvs-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPoseStampedTransformed-response>) ostream)
  "Serializes a message object of type '<GetPoseStampedTransformed-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPoseStampedTransformed-response>) istream)
  "Deserializes a message object of type '<GetPoseStampedTransformed-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPoseStampedTransformed-response>)))
  "Returns string type for a service object of type '<GetPoseStampedTransformed-response>"
  "cob_srvs/GetPoseStampedTransformedResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPoseStampedTransformed-response)))
  "Returns string type for a service object of type 'GetPoseStampedTransformed-response"
  "cob_srvs/GetPoseStampedTransformedResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPoseStampedTransformed-response>)))
  "Returns md5sum for a message object of type '<GetPoseStampedTransformed-response>"
  "ed0069a0a6ce5102fc39c3328eef052f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPoseStampedTransformed-response)))
  "Returns md5sum for a message object of type 'GetPoseStampedTransformed-response"
  "ed0069a0a6ce5102fc39c3328eef052f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPoseStampedTransformed-response>)))
  "Returns full string definition for message of type '<GetPoseStampedTransformed-response>"
  (cl:format cl:nil "bool success~%geometry_msgs/PoseStamped result~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPoseStampedTransformed-response)))
  "Returns full string definition for message of type 'GetPoseStampedTransformed-response"
  (cl:format cl:nil "bool success~%geometry_msgs/PoseStamped result~%~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPoseStampedTransformed-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPoseStampedTransformed-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPoseStampedTransformed-response
    (cl:cons ':success (success msg))
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPoseStampedTransformed)))
  'GetPoseStampedTransformed-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPoseStampedTransformed)))
  'GetPoseStampedTransformed-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPoseStampedTransformed)))
  "Returns string type for a service object of type '<GetPoseStampedTransformed>"
  "cob_srvs/GetPoseStampedTransformed")