; Auto-generated. Do not edit!


(cl:in-package cob_base_drive_chain-srv)


;//! \htmlinclude ElmoRecorderReadout-request.msg.html

(cl:defclass <ElmoRecorderReadout-request> (roslisp-msg-protocol:ros-message)
  ((subindex
    :reader subindex
    :initarg :subindex
    :type cl:integer
    :initform 0)
   (fileprefix
    :reader fileprefix
    :initarg :fileprefix
    :type cl:string
    :initform ""))
)

(cl:defclass ElmoRecorderReadout-request (<ElmoRecorderReadout-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElmoRecorderReadout-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElmoRecorderReadout-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_base_drive_chain-srv:<ElmoRecorderReadout-request> is deprecated: use cob_base_drive_chain-srv:ElmoRecorderReadout-request instead.")))

(cl:ensure-generic-function 'subindex-val :lambda-list '(m))
(cl:defmethod subindex-val ((m <ElmoRecorderReadout-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_base_drive_chain-srv:subindex-val is deprecated.  Use cob_base_drive_chain-srv:subindex instead.")
  (subindex m))

(cl:ensure-generic-function 'fileprefix-val :lambda-list '(m))
(cl:defmethod fileprefix-val ((m <ElmoRecorderReadout-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_base_drive_chain-srv:fileprefix-val is deprecated.  Use cob_base_drive_chain-srv:fileprefix instead.")
  (fileprefix m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElmoRecorderReadout-request>) ostream)
  "Serializes a message object of type '<ElmoRecorderReadout-request>"
  (cl:let* ((signed (cl:slot-value msg 'subindex)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'fileprefix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'fileprefix))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElmoRecorderReadout-request>) istream)
  "Deserializes a message object of type '<ElmoRecorderReadout-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'subindex) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fileprefix) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'fileprefix) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElmoRecorderReadout-request>)))
  "Returns string type for a service object of type '<ElmoRecorderReadout-request>"
  "cob_base_drive_chain/ElmoRecorderReadoutRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElmoRecorderReadout-request)))
  "Returns string type for a service object of type 'ElmoRecorderReadout-request"
  "cob_base_drive_chain/ElmoRecorderReadoutRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElmoRecorderReadout-request>)))
  "Returns md5sum for a message object of type '<ElmoRecorderReadout-request>"
  "58d03a96e0b56a380d625c18335fb081")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElmoRecorderReadout-request)))
  "Returns md5sum for a message object of type 'ElmoRecorderReadout-request"
  "58d03a96e0b56a380d625c18335fb081")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElmoRecorderReadout-request>)))
  "Returns full string definition for message of type '<ElmoRecorderReadout-request>"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%int64 subindex~%~%~%~%string fileprefix~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElmoRecorderReadout-request)))
  "Returns full string definition for message of type 'ElmoRecorderReadout-request"
  (cl:format cl:nil "~%~%~%~%~%~%~%~%int64 subindex~%~%~%~%string fileprefix~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElmoRecorderReadout-request>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'fileprefix))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElmoRecorderReadout-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ElmoRecorderReadout-request
    (cl:cons ':subindex (subindex msg))
    (cl:cons ':fileprefix (fileprefix msg))
))
;//! \htmlinclude ElmoRecorderReadout-response.msg.html

(cl:defclass <ElmoRecorderReadout-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ElmoRecorderReadout-response (<ElmoRecorderReadout-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ElmoRecorderReadout-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ElmoRecorderReadout-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_base_drive_chain-srv:<ElmoRecorderReadout-response> is deprecated: use cob_base_drive_chain-srv:ElmoRecorderReadout-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ElmoRecorderReadout-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_base_drive_chain-srv:success-val is deprecated.  Use cob_base_drive_chain-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <ElmoRecorderReadout-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_base_drive_chain-srv:message-val is deprecated.  Use cob_base_drive_chain-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ElmoRecorderReadout-response>) ostream)
  "Serializes a message object of type '<ElmoRecorderReadout-response>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ElmoRecorderReadout-response>) istream)
  "Deserializes a message object of type '<ElmoRecorderReadout-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ElmoRecorderReadout-response>)))
  "Returns string type for a service object of type '<ElmoRecorderReadout-response>"
  "cob_base_drive_chain/ElmoRecorderReadoutResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElmoRecorderReadout-response)))
  "Returns string type for a service object of type 'ElmoRecorderReadout-response"
  "cob_base_drive_chain/ElmoRecorderReadoutResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ElmoRecorderReadout-response>)))
  "Returns md5sum for a message object of type '<ElmoRecorderReadout-response>"
  "58d03a96e0b56a380d625c18335fb081")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ElmoRecorderReadout-response)))
  "Returns md5sum for a message object of type 'ElmoRecorderReadout-response"
  "58d03a96e0b56a380d625c18335fb081")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ElmoRecorderReadout-response>)))
  "Returns full string definition for message of type '<ElmoRecorderReadout-response>"
  (cl:format cl:nil "~%~%~%~%~%~%int64 success~%~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ElmoRecorderReadout-response)))
  "Returns full string definition for message of type 'ElmoRecorderReadout-response"
  (cl:format cl:nil "~%~%~%~%~%~%int64 success~%~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ElmoRecorderReadout-response>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ElmoRecorderReadout-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ElmoRecorderReadout-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ElmoRecorderReadout)))
  'ElmoRecorderReadout-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ElmoRecorderReadout)))
  'ElmoRecorderReadout-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ElmoRecorderReadout)))
  "Returns string type for a service object of type '<ElmoRecorderReadout>"
  "cob_base_drive_chain/ElmoRecorderReadout")