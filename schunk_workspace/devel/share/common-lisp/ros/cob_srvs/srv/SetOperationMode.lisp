; Auto-generated. Do not edit!


(cl:in-package cob_srvs-srv)


;//! \htmlinclude SetOperationMode-request.msg.html

(cl:defclass <SetOperationMode-request> (roslisp-msg-protocol:ros-message)
  ((operation_mode
    :reader operation_mode
    :initarg :operation_mode
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass SetOperationMode-request (<SetOperationMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetOperationMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetOperationMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<SetOperationMode-request> is deprecated: use cob_srvs-srv:SetOperationMode-request instead.")))

(cl:ensure-generic-function 'operation_mode-val :lambda-list '(m))
(cl:defmethod operation_mode-val ((m <SetOperationMode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:operation_mode-val is deprecated.  Use cob_srvs-srv:operation_mode instead.")
  (operation_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetOperationMode-request>) ostream)
  "Serializes a message object of type '<SetOperationMode-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'operation_mode) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetOperationMode-request>) istream)
  "Deserializes a message object of type '<SetOperationMode-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'operation_mode) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetOperationMode-request>)))
  "Returns string type for a service object of type '<SetOperationMode-request>"
  "cob_srvs/SetOperationModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetOperationMode-request)))
  "Returns string type for a service object of type 'SetOperationMode-request"
  "cob_srvs/SetOperationModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetOperationMode-request>)))
  "Returns md5sum for a message object of type '<SetOperationMode-request>"
  "588a6152f0ed57d725118cc82be8479a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetOperationMode-request)))
  "Returns md5sum for a message object of type 'SetOperationMode-request"
  "588a6152f0ed57d725118cc82be8479a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetOperationMode-request>)))
  "Returns full string definition for message of type '<SetOperationMode-request>"
  (cl:format cl:nil "std_msgs/String operation_mode~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetOperationMode-request)))
  "Returns full string definition for message of type 'SetOperationMode-request"
  (cl:format cl:nil "std_msgs/String operation_mode~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetOperationMode-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'operation_mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetOperationMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetOperationMode-request
    (cl:cons ':operation_mode (operation_mode msg))
))
;//! \htmlinclude SetOperationMode-response.msg.html

(cl:defclass <SetOperationMode-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetOperationMode-response (<SetOperationMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetOperationMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetOperationMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<SetOperationMode-response> is deprecated: use cob_srvs-srv:SetOperationMode-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetOperationMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:success-val is deprecated.  Use cob_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <SetOperationMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:error_message-val is deprecated.  Use cob_srvs-srv:error_message instead.")
  (error_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetOperationMode-response>) ostream)
  "Serializes a message object of type '<SetOperationMode-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'success) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error_message) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetOperationMode-response>) istream)
  "Deserializes a message object of type '<SetOperationMode-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'success) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error_message) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetOperationMode-response>)))
  "Returns string type for a service object of type '<SetOperationMode-response>"
  "cob_srvs/SetOperationModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetOperationMode-response)))
  "Returns string type for a service object of type 'SetOperationMode-response"
  "cob_srvs/SetOperationModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetOperationMode-response>)))
  "Returns md5sum for a message object of type '<SetOperationMode-response>"
  "588a6152f0ed57d725118cc82be8479a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetOperationMode-response)))
  "Returns md5sum for a message object of type 'SetOperationMode-response"
  "588a6152f0ed57d725118cc82be8479a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetOperationMode-response>)))
  "Returns full string definition for message of type '<SetOperationMode-response>"
  (cl:format cl:nil "std_msgs/Bool success~%std_msgs/String error_message~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetOperationMode-response)))
  "Returns full string definition for message of type 'SetOperationMode-response"
  (cl:format cl:nil "std_msgs/Bool success~%std_msgs/String error_message~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetOperationMode-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'success))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetOperationMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetOperationMode-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_message (error_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetOperationMode)))
  'SetOperationMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetOperationMode)))
  'SetOperationMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetOperationMode)))
  "Returns string type for a service object of type '<SetOperationMode>"
  "cob_srvs/SetOperationMode")