; Auto-generated. Do not edit!


(cl:in-package cob_phidgets-msg)


;//! \htmlinclude DigitalSensor.msg.html

(cl:defclass <DigitalSensor> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (uri
    :reader uri
    :initarg :uri
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (state
    :reader state
    :initarg :state
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass DigitalSensor (<DigitalSensor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DigitalSensor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DigitalSensor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_phidgets-msg:<DigitalSensor> is deprecated: use cob_phidgets-msg:DigitalSensor instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DigitalSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_phidgets-msg:header-val is deprecated.  Use cob_phidgets-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'uri-val :lambda-list '(m))
(cl:defmethod uri-val ((m <DigitalSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_phidgets-msg:uri-val is deprecated.  Use cob_phidgets-msg:uri instead.")
  (uri m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <DigitalSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_phidgets-msg:state-val is deprecated.  Use cob_phidgets-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DigitalSensor>) ostream)
  "Serializes a message object of type '<DigitalSensor>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'uri))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'uri))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DigitalSensor>) istream)
  "Deserializes a message object of type '<DigitalSensor>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'uri) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'uri)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DigitalSensor>)))
  "Returns string type for a message object of type '<DigitalSensor>"
  "cob_phidgets/DigitalSensor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DigitalSensor)))
  "Returns string type for a message object of type 'DigitalSensor"
  "cob_phidgets/DigitalSensor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DigitalSensor>)))
  "Returns md5sum for a message object of type '<DigitalSensor>"
  "a7555c23666cea5795a76c1bdec02d2c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DigitalSensor)))
  "Returns md5sum for a message object of type 'DigitalSensor"
  "a7555c23666cea5795a76c1bdec02d2c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DigitalSensor>)))
  "Returns full string definition for message of type '<DigitalSensor>"
  (cl:format cl:nil "Header header~%string[] uri~%int8[] state~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DigitalSensor)))
  "Returns full string definition for message of type 'DigitalSensor"
  (cl:format cl:nil "Header header~%string[] uri~%int8[] state~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DigitalSensor>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'uri) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DigitalSensor>))
  "Converts a ROS message object to a list"
  (cl:list 'DigitalSensor
    (cl:cons ':header (header msg))
    (cl:cons ':uri (uri msg))
    (cl:cons ':state (state msg))
))
