; Auto-generated. Do not edit!


(cl:in-package cob_phidgets-srv)


;//! \htmlinclude SetDigitalSensor-request.msg.html

(cl:defclass <SetDigitalSensor-request> (roslisp-msg-protocol:ros-message)
  ((uri
    :reader uri
    :initarg :uri
    :type cl:string
    :initform "")
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetDigitalSensor-request (<SetDigitalSensor-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDigitalSensor-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDigitalSensor-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_phidgets-srv:<SetDigitalSensor-request> is deprecated: use cob_phidgets-srv:SetDigitalSensor-request instead.")))

(cl:ensure-generic-function 'uri-val :lambda-list '(m))
(cl:defmethod uri-val ((m <SetDigitalSensor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_phidgets-srv:uri-val is deprecated.  Use cob_phidgets-srv:uri instead.")
  (uri m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SetDigitalSensor-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_phidgets-srv:state-val is deprecated.  Use cob_phidgets-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDigitalSensor-request>) ostream)
  "Serializes a message object of type '<SetDigitalSensor-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uri))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uri))
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDigitalSensor-request>) istream)
  "Deserializes a message object of type '<SetDigitalSensor-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uri) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uri) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDigitalSensor-request>)))
  "Returns string type for a service object of type '<SetDigitalSensor-request>"
  "cob_phidgets/SetDigitalSensorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDigitalSensor-request)))
  "Returns string type for a service object of type 'SetDigitalSensor-request"
  "cob_phidgets/SetDigitalSensorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDigitalSensor-request>)))
  "Returns md5sum for a message object of type '<SetDigitalSensor-request>"
  "1ddd624f449abe5e039f3478b75cb4d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDigitalSensor-request)))
  "Returns md5sum for a message object of type 'SetDigitalSensor-request"
  "1ddd624f449abe5e039f3478b75cb4d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDigitalSensor-request>)))
  "Returns full string definition for message of type '<SetDigitalSensor-request>"
  (cl:format cl:nil "string uri~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDigitalSensor-request)))
  "Returns full string definition for message of type 'SetDigitalSensor-request"
  (cl:format cl:nil "string uri~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDigitalSensor-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'uri))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDigitalSensor-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDigitalSensor-request
    (cl:cons ':uri (uri msg))
    (cl:cons ':state (state msg))
))
;//! \htmlinclude SetDigitalSensor-response.msg.html

(cl:defclass <SetDigitalSensor-response> (roslisp-msg-protocol:ros-message)
  ((uri
    :reader uri
    :initarg :uri
    :type cl:string
    :initform "")
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetDigitalSensor-response (<SetDigitalSensor-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDigitalSensor-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDigitalSensor-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_phidgets-srv:<SetDigitalSensor-response> is deprecated: use cob_phidgets-srv:SetDigitalSensor-response instead.")))

(cl:ensure-generic-function 'uri-val :lambda-list '(m))
(cl:defmethod uri-val ((m <SetDigitalSensor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_phidgets-srv:uri-val is deprecated.  Use cob_phidgets-srv:uri instead.")
  (uri m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SetDigitalSensor-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_phidgets-srv:state-val is deprecated.  Use cob_phidgets-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDigitalSensor-response>) ostream)
  "Serializes a message object of type '<SetDigitalSensor-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'uri))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'uri))
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDigitalSensor-response>) istream)
  "Deserializes a message object of type '<SetDigitalSensor-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'uri) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'uri) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDigitalSensor-response>)))
  "Returns string type for a service object of type '<SetDigitalSensor-response>"
  "cob_phidgets/SetDigitalSensorResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDigitalSensor-response)))
  "Returns string type for a service object of type 'SetDigitalSensor-response"
  "cob_phidgets/SetDigitalSensorResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDigitalSensor-response>)))
  "Returns md5sum for a message object of type '<SetDigitalSensor-response>"
  "1ddd624f449abe5e039f3478b75cb4d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDigitalSensor-response)))
  "Returns md5sum for a message object of type 'SetDigitalSensor-response"
  "1ddd624f449abe5e039f3478b75cb4d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDigitalSensor-response>)))
  "Returns full string definition for message of type '<SetDigitalSensor-response>"
  (cl:format cl:nil "string uri~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDigitalSensor-response)))
  "Returns full string definition for message of type 'SetDigitalSensor-response"
  (cl:format cl:nil "string uri~%int8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDigitalSensor-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'uri))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDigitalSensor-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDigitalSensor-response
    (cl:cons ':uri (uri msg))
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetDigitalSensor)))
  'SetDigitalSensor-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetDigitalSensor)))
  'SetDigitalSensor-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDigitalSensor)))
  "Returns string type for a service object of type '<SetDigitalSensor>"
  "cob_phidgets/SetDigitalSensor")