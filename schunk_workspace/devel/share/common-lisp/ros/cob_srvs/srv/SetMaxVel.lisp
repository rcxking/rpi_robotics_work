; Auto-generated. Do not edit!


(cl:in-package cob_srvs-srv)


;//! \htmlinclude SetMaxVel-request.msg.html

(cl:defclass <SetMaxVel-request> (roslisp-msg-protocol:ros-message)
  ((max_vel
    :reader max_vel
    :initarg :max_vel
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetMaxVel-request (<SetMaxVel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMaxVel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMaxVel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<SetMaxVel-request> is deprecated: use cob_srvs-srv:SetMaxVel-request instead.")))

(cl:ensure-generic-function 'max_vel-val :lambda-list '(m))
(cl:defmethod max_vel-val ((m <SetMaxVel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:max_vel-val is deprecated.  Use cob_srvs-srv:max_vel instead.")
  (max_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMaxVel-request>) ostream)
  "Serializes a message object of type '<SetMaxVel-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMaxVel-request>) istream)
  "Deserializes a message object of type '<SetMaxVel-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_vel) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMaxVel-request>)))
  "Returns string type for a service object of type '<SetMaxVel-request>"
  "cob_srvs/SetMaxVelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMaxVel-request)))
  "Returns string type for a service object of type 'SetMaxVel-request"
  "cob_srvs/SetMaxVelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMaxVel-request>)))
  "Returns md5sum for a message object of type '<SetMaxVel-request>"
  "5212ea5f4e683819f4e395ad0eb8ae8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMaxVel-request)))
  "Returns md5sum for a message object of type 'SetMaxVel-request"
  "5212ea5f4e683819f4e395ad0eb8ae8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMaxVel-request>)))
  "Returns full string definition for message of type '<SetMaxVel-request>"
  (cl:format cl:nil "float32 max_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMaxVel-request)))
  "Returns full string definition for message of type 'SetMaxVel-request"
  (cl:format cl:nil "float32 max_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMaxVel-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMaxVel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMaxVel-request
    (cl:cons ':max_vel (max_vel msg))
))
;//! \htmlinclude SetMaxVel-response.msg.html

(cl:defclass <SetMaxVel-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (errorMessage
    :reader errorMessage
    :initarg :errorMessage
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass SetMaxVel-response (<SetMaxVel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetMaxVel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetMaxVel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<SetMaxVel-response> is deprecated: use cob_srvs-srv:SetMaxVel-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetMaxVel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:success-val is deprecated.  Use cob_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'errorMessage-val :lambda-list '(m))
(cl:defmethod errorMessage-val ((m <SetMaxVel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:errorMessage-val is deprecated.  Use cob_srvs-srv:errorMessage instead.")
  (errorMessage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetMaxVel-response>) ostream)
  "Serializes a message object of type '<SetMaxVel-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'errorMessage) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetMaxVel-response>) istream)
  "Deserializes a message object of type '<SetMaxVel-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'errorMessage) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetMaxVel-response>)))
  "Returns string type for a service object of type '<SetMaxVel-response>"
  "cob_srvs/SetMaxVelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMaxVel-response)))
  "Returns string type for a service object of type 'SetMaxVel-response"
  "cob_srvs/SetMaxVelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetMaxVel-response>)))
  "Returns md5sum for a message object of type '<SetMaxVel-response>"
  "5212ea5f4e683819f4e395ad0eb8ae8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetMaxVel-response)))
  "Returns md5sum for a message object of type 'SetMaxVel-response"
  "5212ea5f4e683819f4e395ad0eb8ae8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetMaxVel-response>)))
  "Returns full string definition for message of type '<SetMaxVel-response>"
  (cl:format cl:nil "bool success~%std_msgs/String errorMessage~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetMaxVel-response)))
  "Returns full string definition for message of type 'SetMaxVel-response"
  (cl:format cl:nil "bool success~%std_msgs/String errorMessage~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetMaxVel-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'errorMessage))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetMaxVel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetMaxVel-response
    (cl:cons ':success (success msg))
    (cl:cons ':errorMessage (errorMessage msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetMaxVel)))
  'SetMaxVel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetMaxVel)))
  'SetMaxVel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetMaxVel)))
  "Returns string type for a service object of type '<SetMaxVel>"
  "cob_srvs/SetMaxVel")