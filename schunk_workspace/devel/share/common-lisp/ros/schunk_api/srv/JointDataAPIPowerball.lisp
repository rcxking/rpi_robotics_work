; Auto-generated. Do not edit!


(cl:in-package schunk_api-srv)


;//! \htmlinclude JointDataAPIPowerball-request.msg.html

(cl:defclass <JointDataAPIPowerball-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass JointDataAPIPowerball-request (<JointDataAPIPowerball-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointDataAPIPowerball-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointDataAPIPowerball-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name schunk_api-srv:<JointDataAPIPowerball-request> is deprecated: use schunk_api-srv:JointDataAPIPowerball-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <JointDataAPIPowerball-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader schunk_api-srv:command-val is deprecated.  Use schunk_api-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointDataAPIPowerball-request>) ostream)
  "Serializes a message object of type '<JointDataAPIPowerball-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointDataAPIPowerball-request>) istream)
  "Deserializes a message object of type '<JointDataAPIPowerball-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointDataAPIPowerball-request>)))
  "Returns string type for a service object of type '<JointDataAPIPowerball-request>"
  "schunk_api/JointDataAPIPowerballRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointDataAPIPowerball-request)))
  "Returns string type for a service object of type 'JointDataAPIPowerball-request"
  "schunk_api/JointDataAPIPowerballRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointDataAPIPowerball-request>)))
  "Returns md5sum for a message object of type '<JointDataAPIPowerball-request>"
  "ebaac739ca0ec34f8c8978d1e8915ec0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointDataAPIPowerball-request)))
  "Returns md5sum for a message object of type 'JointDataAPIPowerball-request"
  "ebaac739ca0ec34f8c8978d1e8915ec0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointDataAPIPowerball-request>)))
  "Returns full string definition for message of type '<JointDataAPIPowerball-request>"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointDataAPIPowerball-request)))
  "Returns full string definition for message of type 'JointDataAPIPowerball-request"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointDataAPIPowerball-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointDataAPIPowerball-request>))
  "Converts a ROS message object to a list"
  (cl:list 'JointDataAPIPowerball-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude JointDataAPIPowerball-response.msg.html

(cl:defclass <JointDataAPIPowerball-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass JointDataAPIPowerball-response (<JointDataAPIPowerball-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointDataAPIPowerball-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointDataAPIPowerball-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name schunk_api-srv:<JointDataAPIPowerball-response> is deprecated: use schunk_api-srv:JointDataAPIPowerball-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <JointDataAPIPowerball-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader schunk_api-srv:status-val is deprecated.  Use schunk_api-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointDataAPIPowerball-response>) ostream)
  "Serializes a message object of type '<JointDataAPIPowerball-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointDataAPIPowerball-response>) istream)
  "Deserializes a message object of type '<JointDataAPIPowerball-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointDataAPIPowerball-response>)))
  "Returns string type for a service object of type '<JointDataAPIPowerball-response>"
  "schunk_api/JointDataAPIPowerballResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointDataAPIPowerball-response)))
  "Returns string type for a service object of type 'JointDataAPIPowerball-response"
  "schunk_api/JointDataAPIPowerballResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointDataAPIPowerball-response>)))
  "Returns md5sum for a message object of type '<JointDataAPIPowerball-response>"
  "ebaac739ca0ec34f8c8978d1e8915ec0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointDataAPIPowerball-response)))
  "Returns md5sum for a message object of type 'JointDataAPIPowerball-response"
  "ebaac739ca0ec34f8c8978d1e8915ec0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointDataAPIPowerball-response>)))
  "Returns full string definition for message of type '<JointDataAPIPowerball-response>"
  (cl:format cl:nil "int64 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointDataAPIPowerball-response)))
  "Returns full string definition for message of type 'JointDataAPIPowerball-response"
  (cl:format cl:nil "int64 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointDataAPIPowerball-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointDataAPIPowerball-response>))
  "Converts a ROS message object to a list"
  (cl:list 'JointDataAPIPowerball-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'JointDataAPIPowerball)))
  'JointDataAPIPowerball-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'JointDataAPIPowerball)))
  'JointDataAPIPowerball-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointDataAPIPowerball)))
  "Returns string type for a service object of type '<JointDataAPIPowerball>"
  "schunk_api/JointDataAPIPowerball")