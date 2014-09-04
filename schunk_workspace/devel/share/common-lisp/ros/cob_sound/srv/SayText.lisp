; Auto-generated. Do not edit!


(cl:in-package cob_sound-srv)


;//! \htmlinclude SayText-request.msg.html

(cl:defclass <SayText-request> (roslisp-msg-protocol:ros-message)
  ((text
    :reader text
    :initarg :text
    :type cl:string
    :initform ""))
)

(cl:defclass SayText-request (<SayText-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SayText-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SayText-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_sound-srv:<SayText-request> is deprecated: use cob_sound-srv:SayText-request instead.")))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <SayText-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_sound-srv:text-val is deprecated.  Use cob_sound-srv:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SayText-request>) ostream)
  "Serializes a message object of type '<SayText-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SayText-request>) istream)
  "Deserializes a message object of type '<SayText-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SayText-request>)))
  "Returns string type for a service object of type '<SayText-request>"
  "cob_sound/SayTextRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SayText-request)))
  "Returns string type for a service object of type 'SayText-request"
  "cob_sound/SayTextRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SayText-request>)))
  "Returns md5sum for a message object of type '<SayText-request>"
  "74697ed3d931f6eede8bf3a8dfeca160")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SayText-request)))
  "Returns md5sum for a message object of type 'SayText-request"
  "74697ed3d931f6eede8bf3a8dfeca160")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SayText-request>)))
  "Returns full string definition for message of type '<SayText-request>"
  (cl:format cl:nil "string text~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SayText-request)))
  "Returns full string definition for message of type 'SayText-request"
  (cl:format cl:nil "string text~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SayText-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SayText-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SayText-request
    (cl:cons ':text (text msg))
))
;//! \htmlinclude SayText-response.msg.html

(cl:defclass <SayText-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SayText-response (<SayText-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SayText-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SayText-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_sound-srv:<SayText-response> is deprecated: use cob_sound-srv:SayText-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SayText-response>) ostream)
  "Serializes a message object of type '<SayText-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SayText-response>) istream)
  "Deserializes a message object of type '<SayText-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SayText-response>)))
  "Returns string type for a service object of type '<SayText-response>"
  "cob_sound/SayTextResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SayText-response)))
  "Returns string type for a service object of type 'SayText-response"
  "cob_sound/SayTextResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SayText-response>)))
  "Returns md5sum for a message object of type '<SayText-response>"
  "74697ed3d931f6eede8bf3a8dfeca160")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SayText-response)))
  "Returns md5sum for a message object of type 'SayText-response"
  "74697ed3d931f6eede8bf3a8dfeca160")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SayText-response>)))
  "Returns full string definition for message of type '<SayText-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SayText-response)))
  "Returns full string definition for message of type 'SayText-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SayText-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SayText-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SayText-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SayText)))
  'SayText-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SayText)))
  'SayText-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SayText)))
  "Returns string type for a service object of type '<SayText>"
  "cob_sound/SayText")