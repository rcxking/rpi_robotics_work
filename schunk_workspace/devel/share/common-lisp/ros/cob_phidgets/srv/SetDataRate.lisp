; Auto-generated. Do not edit!


(cl:in-package cob_phidgets-srv)


;//! \htmlinclude SetDataRate-request.msg.html

(cl:defclass <SetDataRate-request> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:fixnum
    :initform 0)
   (data_rate
    :reader data_rate
    :initarg :data_rate
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetDataRate-request (<SetDataRate-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDataRate-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDataRate-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_phidgets-srv:<SetDataRate-request> is deprecated: use cob_phidgets-srv:SetDataRate-request instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <SetDataRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_phidgets-srv:index-val is deprecated.  Use cob_phidgets-srv:index instead.")
  (index m))

(cl:ensure-generic-function 'data_rate-val :lambda-list '(m))
(cl:defmethod data_rate-val ((m <SetDataRate-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_phidgets-srv:data_rate-val is deprecated.  Use cob_phidgets-srv:data_rate instead.")
  (data_rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDataRate-request>) ostream)
  "Serializes a message object of type '<SetDataRate-request>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_rate)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data_rate)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDataRate-request>) istream)
  "Deserializes a message object of type '<SetDataRate-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_rate)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data_rate)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDataRate-request>)))
  "Returns string type for a service object of type '<SetDataRate-request>"
  "cob_phidgets/SetDataRateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDataRate-request)))
  "Returns string type for a service object of type 'SetDataRate-request"
  "cob_phidgets/SetDataRateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDataRate-request>)))
  "Returns md5sum for a message object of type '<SetDataRate-request>"
  "2fe4d4dafc6b478c7e506a02543a3197")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDataRate-request)))
  "Returns md5sum for a message object of type 'SetDataRate-request"
  "2fe4d4dafc6b478c7e506a02543a3197")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDataRate-request>)))
  "Returns full string definition for message of type '<SetDataRate-request>"
  (cl:format cl:nil "int8 index~%uint16 data_rate~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDataRate-request)))
  "Returns full string definition for message of type 'SetDataRate-request"
  (cl:format cl:nil "int8 index~%uint16 data_rate~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDataRate-request>))
  (cl:+ 0
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDataRate-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDataRate-request
    (cl:cons ':index (index msg))
    (cl:cons ':data_rate (data_rate msg))
))
;//! \htmlinclude SetDataRate-response.msg.html

(cl:defclass <SetDataRate-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetDataRate-response (<SetDataRate-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetDataRate-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetDataRate-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_phidgets-srv:<SetDataRate-response> is deprecated: use cob_phidgets-srv:SetDataRate-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetDataRate-response>) ostream)
  "Serializes a message object of type '<SetDataRate-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetDataRate-response>) istream)
  "Deserializes a message object of type '<SetDataRate-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetDataRate-response>)))
  "Returns string type for a service object of type '<SetDataRate-response>"
  "cob_phidgets/SetDataRateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDataRate-response)))
  "Returns string type for a service object of type 'SetDataRate-response"
  "cob_phidgets/SetDataRateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetDataRate-response>)))
  "Returns md5sum for a message object of type '<SetDataRate-response>"
  "2fe4d4dafc6b478c7e506a02543a3197")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetDataRate-response)))
  "Returns md5sum for a message object of type 'SetDataRate-response"
  "2fe4d4dafc6b478c7e506a02543a3197")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetDataRate-response>)))
  "Returns full string definition for message of type '<SetDataRate-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetDataRate-response)))
  "Returns full string definition for message of type 'SetDataRate-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetDataRate-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetDataRate-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetDataRate-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetDataRate)))
  'SetDataRate-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetDataRate)))
  'SetDataRate-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetDataRate)))
  "Returns string type for a service object of type '<SetDataRate>"
  "cob_phidgets/SetDataRate")