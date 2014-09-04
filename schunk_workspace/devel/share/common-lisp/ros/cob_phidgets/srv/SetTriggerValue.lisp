; Auto-generated. Do not edit!


(cl:in-package cob_phidgets-srv)


;//! \htmlinclude SetTriggerValue-request.msg.html

(cl:defclass <SetTriggerValue-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:fixnum
    :initform 0)
   (trigger_value
    :reader trigger_value
    :initarg :trigger_value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetTriggerValue-request (<SetTriggerValue-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTriggerValue-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTriggerValue-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_phidgets-srv:<SetTriggerValue-request> is deprecated: use cob_phidgets-srv:SetTriggerValue-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <SetTriggerValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_phidgets-srv:index-val is deprecated.  Use cob_phidgets-srv:index instead.")
  (index m))

(cl:ensure-generic-function 'trigger_value-val :lambda-list '(m))
(cl:defmethod trigger_value-val ((m <SetTriggerValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_phidgets-srv:trigger_value-val is deprecated.  Use cob_phidgets-srv:trigger_value instead.")
  (trigger_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTriggerValue-request>) ostream)
  "Serializes a message object of type '<SetTriggerValue-request>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trigger_value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'trigger_value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTriggerValue-request>) istream)
  "Deserializes a message object of type '<SetTriggerValue-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trigger_value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'trigger_value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTriggerValue-request>)))
  "Returns string type for a service object of type '<SetTriggerValue-request>"
  "cob_phidgets/SetTriggerValueRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTriggerValue-request)))
  "Returns string type for a service object of type 'SetTriggerValue-request"
  "cob_phidgets/SetTriggerValueRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTriggerValue-request>)))
  "Returns md5sum for a message object of type '<SetTriggerValue-request>"
  "f5eabd2487a9b62214c60cbc4be257ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTriggerValue-request)))
  "Returns md5sum for a message object of type 'SetTriggerValue-request"
  "f5eabd2487a9b62214c60cbc4be257ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTriggerValue-request>)))
  "Returns full string definition for message of type '<SetTriggerValue-request>"
  (cl:format cl:nil "int8 index~%uint16 trigger_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTriggerValue-request)))
  "Returns full string definition for message of type 'SetTriggerValue-request"
  (cl:format cl:nil "int8 index~%uint16 trigger_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTriggerValue-request>))
  (cl:+ 0
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTriggerValue-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTriggerValue-request
    (cl:cons ':index (index msg))
    (cl:cons ':trigger_value (trigger_value msg))
))
;//! \htmlinclude SetTriggerValue-response.msg.html

(cl:defclass <SetTriggerValue-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetTriggerValue-response (<SetTriggerValue-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTriggerValue-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTriggerValue-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_phidgets-srv:<SetTriggerValue-response> is deprecated: use cob_phidgets-srv:SetTriggerValue-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTriggerValue-response>) ostream)
  "Serializes a message object of type '<SetTriggerValue-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTriggerValue-response>) istream)
  "Deserializes a message object of type '<SetTriggerValue-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTriggerValue-response>)))
  "Returns string type for a service object of type '<SetTriggerValue-response>"
  "cob_phidgets/SetTriggerValueResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTriggerValue-response)))
  "Returns string type for a service object of type 'SetTriggerValue-response"
  "cob_phidgets/SetTriggerValueResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTriggerValue-response>)))
  "Returns md5sum for a message object of type '<SetTriggerValue-response>"
  "f5eabd2487a9b62214c60cbc4be257ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTriggerValue-response)))
  "Returns md5sum for a message object of type 'SetTriggerValue-response"
  "f5eabd2487a9b62214c60cbc4be257ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTriggerValue-response>)))
  "Returns full string definition for message of type '<SetTriggerValue-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTriggerValue-response)))
  "Returns full string definition for message of type 'SetTriggerValue-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTriggerValue-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTriggerValue-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTriggerValue-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetTriggerValue)))
  'SetTriggerValue-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetTriggerValue)))
  'SetTriggerValue-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTriggerValue)))
  "Returns string type for a service object of type '<SetTriggerValue>"
  "cob_phidgets/SetTriggerValue")