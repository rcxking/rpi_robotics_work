; Auto-generated. Do not edit!


(cl:in-package cob_srvs-srv)


;//! \htmlinclude SetDefaultVel-request.msg.html

(cl:defclass <SetDefaultVel-request> (roslisp-msg-protocol:ros-message)
  ((default_vel
    :reader default_vel
    :initarg :default_vel
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetDefaultVel-request (<SetDefaultVel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDefaultVel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDefaultVel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<SetDefaultVel-request> is deprecated: use cob_srvs-srv:SetDefaultVel-request instead.")))

(cl:ensure-generic-function 'default_vel-val :lambda-list '(m))
(cl:defmethod default_vel-val ((m <SetDefaultVel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:default_vel-val is deprecated.  Use cob_srvs-srv:default_vel instead.")
  (default_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDefaultVel-request>) ostream)
  "Serializes a message object of type '<SetDefaultVel-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'default_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDefaultVel-request>) istream)
  "Deserializes a message object of type '<SetDefaultVel-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'default_vel) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDefaultVel-request>)))
  "Returns string type for a service object of type '<SetDefaultVel-request>"
  "cob_srvs/SetDefaultVelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDefaultVel-request)))
  "Returns string type for a service object of type 'SetDefaultVel-request"
  "cob_srvs/SetDefaultVelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDefaultVel-request>)))
  "Returns md5sum for a message object of type '<SetDefaultVel-request>"
  "a7159156625f755343070ad39bfaf3a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDefaultVel-request)))
  "Returns md5sum for a message object of type 'SetDefaultVel-request"
  "a7159156625f755343070ad39bfaf3a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDefaultVel-request>)))
  "Returns full string definition for message of type '<SetDefaultVel-request>"
  (cl:format cl:nil "float32 default_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDefaultVel-request)))
  "Returns full string definition for message of type 'SetDefaultVel-request"
  (cl:format cl:nil "float32 default_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDefaultVel-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDefaultVel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDefaultVel-request
    (cl:cons ':default_vel (default_vel msg))
))
;//! \htmlinclude SetDefaultVel-response.msg.html

(cl:defclass <SetDefaultVel-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (error_message
    :reader error_message
    :initarg :error_message
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass SetDefaultVel-response (<SetDefaultVel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDefaultVel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDefaultVel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<SetDefaultVel-response> is deprecated: use cob_srvs-srv:SetDefaultVel-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetDefaultVel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:success-val is deprecated.  Use cob_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <SetDefaultVel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:error_message-val is deprecated.  Use cob_srvs-srv:error_message instead.")
  (error_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDefaultVel-response>) ostream)
  "Serializes a message object of type '<SetDefaultVel-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'success) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error_message) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDefaultVel-response>) istream)
  "Deserializes a message object of type '<SetDefaultVel-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'success) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error_message) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDefaultVel-response>)))
  "Returns string type for a service object of type '<SetDefaultVel-response>"
  "cob_srvs/SetDefaultVelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDefaultVel-response)))
  "Returns string type for a service object of type 'SetDefaultVel-response"
  "cob_srvs/SetDefaultVelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDefaultVel-response>)))
  "Returns md5sum for a message object of type '<SetDefaultVel-response>"
  "a7159156625f755343070ad39bfaf3a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDefaultVel-response)))
  "Returns md5sum for a message object of type 'SetDefaultVel-response"
  "a7159156625f755343070ad39bfaf3a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDefaultVel-response>)))
  "Returns full string definition for message of type '<SetDefaultVel-response>"
  (cl:format cl:nil "std_msgs/Bool success~%std_msgs/String error_message~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDefaultVel-response)))
  "Returns full string definition for message of type 'SetDefaultVel-response"
  (cl:format cl:nil "std_msgs/Bool success~%std_msgs/String error_message~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDefaultVel-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'success))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDefaultVel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDefaultVel-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_message (error_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetDefaultVel)))
  'SetDefaultVel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetDefaultVel)))
  'SetDefaultVel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDefaultVel)))
  "Returns string type for a service object of type '<SetDefaultVel>"
  "cob_srvs/SetDefaultVel")