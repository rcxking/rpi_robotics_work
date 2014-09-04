; Auto-generated. Do not edit!


(cl:in-package cob_base_drive_chain-srv)


;//! \htmlinclude ElmoRecorderConfig-request.msg.html

(cl:defclass <ElmoRecorderConfig-request> (roslisp-msg-protocol:ros-message)
  ((recordinggap
    :reader recordinggap
    :initarg :recordinggap
    :type cl:integer
    :initform 0))
)

(cl:defclass ElmoRecorderConfig-request (<ElmoRecorderConfig-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElmoRecorderConfig-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElmoRecorderConfig-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_base_drive_chain-srv:<ElmoRecorderConfig-request> is deprecated: use cob_base_drive_chain-srv:ElmoRecorderConfig-request instead.")))

(cl:ensure-generic-function 'recordinggap-val :lambda-list '(m))
(cl:defmethod recordinggap-val ((m <ElmoRecorderConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_base_drive_chain-srv:recordinggap-val is deprecated.  Use cob_base_drive_chain-srv:recordinggap instead.")
  (recordinggap m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElmoRecorderConfig-request>) ostream)
  "Serializes a message object of type '<ElmoRecorderConfig-request>"
  (cl:let* ((signed (cl:slot-value msg 'recordinggap)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElmoRecorderConfig-request>) istream)
  "Deserializes a message object of type '<ElmoRecorderConfig-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'recordinggap) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElmoRecorderConfig-request>)))
  "Returns string type for a service object of type '<ElmoRecorderConfig-request>"
  "cob_base_drive_chain/ElmoRecorderConfigRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElmoRecorderConfig-request)))
  "Returns string type for a service object of type 'ElmoRecorderConfig-request"
  "cob_base_drive_chain/ElmoRecorderConfigRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElmoRecorderConfig-request>)))
  "Returns md5sum for a message object of type '<ElmoRecorderConfig-request>"
  "6628984158bd91781b20dd0ee7c71147")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElmoRecorderConfig-request)))
  "Returns md5sum for a message object of type 'ElmoRecorderConfig-request"
  "6628984158bd91781b20dd0ee7c71147")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElmoRecorderConfig-request>)))
  "Returns full string definition for message of type '<ElmoRecorderConfig-request>"
  (cl:format cl:nil "~%~%~%int64 recordinggap~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElmoRecorderConfig-request)))
  "Returns full string definition for message of type 'ElmoRecorderConfig-request"
  (cl:format cl:nil "~%~%~%int64 recordinggap~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElmoRecorderConfig-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElmoRecorderConfig-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ElmoRecorderConfig-request
    (cl:cons ':recordinggap (recordinggap msg))
))
;//! \htmlinclude ElmoRecorderConfig-response.msg.html

(cl:defclass <ElmoRecorderConfig-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass ElmoRecorderConfig-response (<ElmoRecorderConfig-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElmoRecorderConfig-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElmoRecorderConfig-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_base_drive_chain-srv:<ElmoRecorderConfig-response> is deprecated: use cob_base_drive_chain-srv:ElmoRecorderConfig-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ElmoRecorderConfig-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_base_drive_chain-srv:success-val is deprecated.  Use cob_base_drive_chain-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ElmoRecorderConfig-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_base_drive_chain-srv:message-val is deprecated.  Use cob_base_drive_chain-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElmoRecorderConfig-response>) ostream)
  "Serializes a message object of type '<ElmoRecorderConfig-response>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElmoRecorderConfig-response>) istream)
  "Deserializes a message object of type '<ElmoRecorderConfig-response>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElmoRecorderConfig-response>)))
  "Returns string type for a service object of type '<ElmoRecorderConfig-response>"
  "cob_base_drive_chain/ElmoRecorderConfigResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElmoRecorderConfig-response)))
  "Returns string type for a service object of type 'ElmoRecorderConfig-response"
  "cob_base_drive_chain/ElmoRecorderConfigResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElmoRecorderConfig-response>)))
  "Returns md5sum for a message object of type '<ElmoRecorderConfig-response>"
  "6628984158bd91781b20dd0ee7c71147")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElmoRecorderConfig-response)))
  "Returns md5sum for a message object of type 'ElmoRecorderConfig-response"
  "6628984158bd91781b20dd0ee7c71147")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElmoRecorderConfig-response>)))
  "Returns full string definition for message of type '<ElmoRecorderConfig-response>"
  (cl:format cl:nil "~%int64 success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElmoRecorderConfig-response)))
  "Returns full string definition for message of type 'ElmoRecorderConfig-response"
  (cl:format cl:nil "~%int64 success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElmoRecorderConfig-response>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElmoRecorderConfig-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ElmoRecorderConfig-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ElmoRecorderConfig)))
  'ElmoRecorderConfig-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ElmoRecorderConfig)))
  'ElmoRecorderConfig-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElmoRecorderConfig)))
  "Returns string type for a service object of type '<ElmoRecorderConfig>"
  "cob_base_drive_chain/ElmoRecorderConfig")