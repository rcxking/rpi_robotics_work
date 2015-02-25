; Auto-generated. Do not edit!


(cl:in-package schunk_api-srv)


;//! \htmlinclude InitHaltAPI-request.msg.html

(cl:defclass <InitHaltAPI-request> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:string
    :initform ""))
)

(cl:defclass InitHaltAPI-request (<InitHaltAPI-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InitHaltAPI-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InitHaltAPI-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name schunk_api-srv:<InitHaltAPI-request> is deprecated: use schunk_api-srv:InitHaltAPI-request instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <InitHaltAPI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader schunk_api-srv:command-val is deprecated.  Use schunk_api-srv:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InitHaltAPI-request>) ostream)
  "Serializes a message object of type '<InitHaltAPI-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InitHaltAPI-request>) istream)
  "Deserializes a message object of type '<InitHaltAPI-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InitHaltAPI-request>)))
  "Returns string type for a service object of type '<InitHaltAPI-request>"
  "schunk_api/InitHaltAPIRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitHaltAPI-request)))
  "Returns string type for a service object of type 'InitHaltAPI-request"
  "schunk_api/InitHaltAPIRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InitHaltAPI-request>)))
  "Returns md5sum for a message object of type '<InitHaltAPI-request>"
  "ebaac739ca0ec34f8c8978d1e8915ec0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InitHaltAPI-request)))
  "Returns md5sum for a message object of type 'InitHaltAPI-request"
  "ebaac739ca0ec34f8c8978d1e8915ec0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InitHaltAPI-request>)))
  "Returns full string definition for message of type '<InitHaltAPI-request>"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InitHaltAPI-request)))
  "Returns full string definition for message of type 'InitHaltAPI-request"
  (cl:format cl:nil "string command~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InitHaltAPI-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InitHaltAPI-request>))
  "Converts a ROS message object to a list"
  (cl:list 'InitHaltAPI-request
    (cl:cons ':command (command msg))
))
;//! \htmlinclude InitHaltAPI-response.msg.html

(cl:defclass <InitHaltAPI-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass InitHaltAPI-response (<InitHaltAPI-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InitHaltAPI-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InitHaltAPI-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name schunk_api-srv:<InitHaltAPI-response> is deprecated: use schunk_api-srv:InitHaltAPI-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <InitHaltAPI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader schunk_api-srv:status-val is deprecated.  Use schunk_api-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InitHaltAPI-response>) ostream)
  "Serializes a message object of type '<InitHaltAPI-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InitHaltAPI-response>) istream)
  "Deserializes a message object of type '<InitHaltAPI-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InitHaltAPI-response>)))
  "Returns string type for a service object of type '<InitHaltAPI-response>"
  "schunk_api/InitHaltAPIResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitHaltAPI-response)))
  "Returns string type for a service object of type 'InitHaltAPI-response"
  "schunk_api/InitHaltAPIResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InitHaltAPI-response>)))
  "Returns md5sum for a message object of type '<InitHaltAPI-response>"
  "ebaac739ca0ec34f8c8978d1e8915ec0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InitHaltAPI-response)))
  "Returns md5sum for a message object of type 'InitHaltAPI-response"
  "ebaac739ca0ec34f8c8978d1e8915ec0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InitHaltAPI-response>)))
  "Returns full string definition for message of type '<InitHaltAPI-response>"
  (cl:format cl:nil "int64 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InitHaltAPI-response)))
  "Returns full string definition for message of type 'InitHaltAPI-response"
  (cl:format cl:nil "int64 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InitHaltAPI-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InitHaltAPI-response>))
  "Converts a ROS message object to a list"
  (cl:list 'InitHaltAPI-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'InitHaltAPI)))
  'InitHaltAPI-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'InitHaltAPI)))
  'InitHaltAPI-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InitHaltAPI)))
  "Returns string type for a service object of type '<InitHaltAPI>"
  "schunk_api/InitHaltAPI")