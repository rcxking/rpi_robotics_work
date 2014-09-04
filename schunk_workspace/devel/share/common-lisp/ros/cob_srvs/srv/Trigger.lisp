; Auto-generated. Do not edit!


(cl:in-package cob_srvs-srv)


;//! \htmlinclude Trigger-request.msg.html

(cl:defclass <Trigger-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Trigger-request (<Trigger-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Trigger-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Trigger-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<Trigger-request> is deprecated: use cob_srvs-srv:Trigger-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Trigger-request>) ostream)
  "Serializes a message object of type '<Trigger-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Trigger-request>) istream)
  "Deserializes a message object of type '<Trigger-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Trigger-request>)))
  "Returns string type for a service object of type '<Trigger-request>"
  "cob_srvs/TriggerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trigger-request)))
  "Returns string type for a service object of type 'Trigger-request"
  "cob_srvs/TriggerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Trigger-request>)))
  "Returns md5sum for a message object of type '<Trigger-request>"
  "bdad515e8f4c013bd650d3407753d2b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Trigger-request)))
  "Returns md5sum for a message object of type 'Trigger-request"
  "bdad515e8f4c013bd650d3407753d2b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Trigger-request>)))
  "Returns full string definition for message of type '<Trigger-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Trigger-request)))
  "Returns full string definition for message of type 'Trigger-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Trigger-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Trigger-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Trigger-request
))
;//! \htmlinclude Trigger-response.msg.html

(cl:defclass <Trigger-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Trigger-response (<Trigger-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Trigger-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Trigger-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<Trigger-response> is deprecated: use cob_srvs-srv:Trigger-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Trigger-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:success-val is deprecated.  Use cob_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <Trigger-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:error_message-val is deprecated.  Use cob_srvs-srv:error_message instead.")
  (error_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Trigger-response>) ostream)
  "Serializes a message object of type '<Trigger-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'success) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error_message) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Trigger-response>) istream)
  "Deserializes a message object of type '<Trigger-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'success) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error_message) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Trigger-response>)))
  "Returns string type for a service object of type '<Trigger-response>"
  "cob_srvs/TriggerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trigger-response)))
  "Returns string type for a service object of type 'Trigger-response"
  "cob_srvs/TriggerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Trigger-response>)))
  "Returns md5sum for a message object of type '<Trigger-response>"
  "bdad515e8f4c013bd650d3407753d2b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Trigger-response)))
  "Returns md5sum for a message object of type 'Trigger-response"
  "bdad515e8f4c013bd650d3407753d2b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Trigger-response>)))
  "Returns full string definition for message of type '<Trigger-response>"
  (cl:format cl:nil "std_msgs/Bool success~%std_msgs/String error_message~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Trigger-response)))
  "Returns full string definition for message of type 'Trigger-response"
  (cl:format cl:nil "std_msgs/Bool success~%std_msgs/String error_message~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Trigger-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'success))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Trigger-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Trigger-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_message (error_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Trigger)))
  'Trigger-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Trigger)))
  'Trigger-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trigger)))
  "Returns string type for a service object of type '<Trigger>"
  "cob_srvs/Trigger")