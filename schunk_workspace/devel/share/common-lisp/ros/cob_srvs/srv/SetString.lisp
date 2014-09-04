; Auto-generated. Do not edit!


(cl:in-package cob_srvs-srv)


;//! \htmlinclude SetString-request.msg.html

(cl:defclass <SetString-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform ""))
)

(cl:defclass SetString-request (<SetString-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetString-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetString-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<SetString-request> is deprecated: use cob_srvs-srv:SetString-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SetString-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:data-val is deprecated.  Use cob_srvs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetString-request>) ostream)
  "Serializes a message object of type '<SetString-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetString-request>) istream)
  "Deserializes a message object of type '<SetString-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetString-request>)))
  "Returns string type for a service object of type '<SetString-request>"
  "cob_srvs/SetStringRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetString-request)))
  "Returns string type for a service object of type 'SetString-request"
  "cob_srvs/SetStringRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetString-request>)))
  "Returns md5sum for a message object of type '<SetString-request>"
  "e1d8c050aed05957d504a68117eb0528")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetString-request)))
  "Returns md5sum for a message object of type 'SetString-request"
  "e1d8c050aed05957d504a68117eb0528")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetString-request>)))
  "Returns full string definition for message of type '<SetString-request>"
  (cl:format cl:nil "string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetString-request)))
  "Returns full string definition for message of type 'SetString-request"
  (cl:format cl:nil "string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetString-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetString-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetString-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SetString-response.msg.html

(cl:defclass <SetString-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetString-response (<SetString-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetString-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetString-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<SetString-response> is deprecated: use cob_srvs-srv:SetString-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetString-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:success-val is deprecated.  Use cob_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'errorMessage-val :lambda-list '(m))
(cl:defmethod errorMessage-val ((m <SetString-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:errorMessage-val is deprecated.  Use cob_srvs-srv:errorMessage instead.")
  (errorMessage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetString-response>) ostream)
  "Serializes a message object of type '<SetString-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'errorMessage) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetString-response>) istream)
  "Deserializes a message object of type '<SetString-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'errorMessage) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetString-response>)))
  "Returns string type for a service object of type '<SetString-response>"
  "cob_srvs/SetStringResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetString-response)))
  "Returns string type for a service object of type 'SetString-response"
  "cob_srvs/SetStringResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetString-response>)))
  "Returns md5sum for a message object of type '<SetString-response>"
  "e1d8c050aed05957d504a68117eb0528")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetString-response)))
  "Returns md5sum for a message object of type 'SetString-response"
  "e1d8c050aed05957d504a68117eb0528")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetString-response>)))
  "Returns full string definition for message of type '<SetString-response>"
  (cl:format cl:nil "bool success~%std_msgs/String errorMessage~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetString-response)))
  "Returns full string definition for message of type 'SetString-response"
  (cl:format cl:nil "bool success~%std_msgs/String errorMessage~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetString-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'errorMessage))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetString-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetString-response
    (cl:cons ':success (success msg))
    (cl:cons ':errorMessage (errorMessage msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetString)))
  'SetString-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetString)))
  'SetString-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetString)))
  "Returns string type for a service object of type '<SetString>"
  "cob_srvs/SetString")