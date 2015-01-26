; Auto-generated. Do not edit!


(cl:in-package schunk_api-srv)


;//! \htmlinclude PositionAPICoordSpace-request.msg.html

(cl:defclass <PositionAPICoordSpace-request> (roslisp-msg-protocol:ros-message)
  ((xCoord
    :reader xCoord
    :initarg :xCoord
    :type cl:float
    :initform 0.0)
   (yCoord
    :reader yCoord
    :initarg :yCoord
    :type cl:float
    :initform 0.0)
   (zCoord
    :reader zCoord
    :initarg :zCoord
    :type cl:float
    :initform 0.0))
)

(cl:defclass PositionAPICoordSpace-request (<PositionAPICoordSpace-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionAPICoordSpace-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionAPICoordSpace-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name schunk_api-srv:<PositionAPICoordSpace-request> is deprecated: use schunk_api-srv:PositionAPICoordSpace-request instead.")))

(cl:ensure-generic-function 'xCoord-val :lambda-list '(m))
(cl:defmethod xCoord-val ((m <PositionAPICoordSpace-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader schunk_api-srv:xCoord-val is deprecated.  Use schunk_api-srv:xCoord instead.")
  (xCoord m))

(cl:ensure-generic-function 'yCoord-val :lambda-list '(m))
(cl:defmethod yCoord-val ((m <PositionAPICoordSpace-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader schunk_api-srv:yCoord-val is deprecated.  Use schunk_api-srv:yCoord instead.")
  (yCoord m))

(cl:ensure-generic-function 'zCoord-val :lambda-list '(m))
(cl:defmethod zCoord-val ((m <PositionAPICoordSpace-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader schunk_api-srv:zCoord-val is deprecated.  Use schunk_api-srv:zCoord instead.")
  (zCoord m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionAPICoordSpace-request>) ostream)
  "Serializes a message object of type '<PositionAPICoordSpace-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'xCoord))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yCoord))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'zCoord))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionAPICoordSpace-request>) istream)
  "Deserializes a message object of type '<PositionAPICoordSpace-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'xCoord) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yCoord) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zCoord) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionAPICoordSpace-request>)))
  "Returns string type for a service object of type '<PositionAPICoordSpace-request>"
  "schunk_api/PositionAPICoordSpaceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionAPICoordSpace-request)))
  "Returns string type for a service object of type 'PositionAPICoordSpace-request"
  "schunk_api/PositionAPICoordSpaceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionAPICoordSpace-request>)))
  "Returns md5sum for a message object of type '<PositionAPICoordSpace-request>"
  "fcb0db018d72d795dd8f562b7c618526")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionAPICoordSpace-request)))
  "Returns md5sum for a message object of type 'PositionAPICoordSpace-request"
  "fcb0db018d72d795dd8f562b7c618526")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionAPICoordSpace-request>)))
  "Returns full string definition for message of type '<PositionAPICoordSpace-request>"
  (cl:format cl:nil "float64 xCoord~%float64 yCoord~%float64 zCoord~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionAPICoordSpace-request)))
  "Returns full string definition for message of type 'PositionAPICoordSpace-request"
  (cl:format cl:nil "float64 xCoord~%float64 yCoord~%float64 zCoord~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionAPICoordSpace-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionAPICoordSpace-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionAPICoordSpace-request
    (cl:cons ':xCoord (xCoord msg))
    (cl:cons ':yCoord (yCoord msg))
    (cl:cons ':zCoord (zCoord msg))
))
;//! \htmlinclude PositionAPICoordSpace-response.msg.html

(cl:defclass <PositionAPICoordSpace-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:integer
    :initform 0))
)

(cl:defclass PositionAPICoordSpace-response (<PositionAPICoordSpace-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionAPICoordSpace-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionAPICoordSpace-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name schunk_api-srv:<PositionAPICoordSpace-response> is deprecated: use schunk_api-srv:PositionAPICoordSpace-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <PositionAPICoordSpace-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader schunk_api-srv:status-val is deprecated.  Use schunk_api-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionAPICoordSpace-response>) ostream)
  "Serializes a message object of type '<PositionAPICoordSpace-response>"
  (cl:let* ((signed (cl:slot-value msg 'status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionAPICoordSpace-response>) istream)
  "Deserializes a message object of type '<PositionAPICoordSpace-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionAPICoordSpace-response>)))
  "Returns string type for a service object of type '<PositionAPICoordSpace-response>"
  "schunk_api/PositionAPICoordSpaceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionAPICoordSpace-response)))
  "Returns string type for a service object of type 'PositionAPICoordSpace-response"
  "schunk_api/PositionAPICoordSpaceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionAPICoordSpace-response>)))
  "Returns md5sum for a message object of type '<PositionAPICoordSpace-response>"
  "fcb0db018d72d795dd8f562b7c618526")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionAPICoordSpace-response)))
  "Returns md5sum for a message object of type 'PositionAPICoordSpace-response"
  "fcb0db018d72d795dd8f562b7c618526")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionAPICoordSpace-response>)))
  "Returns full string definition for message of type '<PositionAPICoordSpace-response>"
  (cl:format cl:nil "int64 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionAPICoordSpace-response)))
  "Returns full string definition for message of type 'PositionAPICoordSpace-response"
  (cl:format cl:nil "int64 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionAPICoordSpace-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionAPICoordSpace-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionAPICoordSpace-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PositionAPICoordSpace)))
  'PositionAPICoordSpace-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PositionAPICoordSpace)))
  'PositionAPICoordSpace-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionAPICoordSpace)))
  "Returns string type for a service object of type '<PositionAPICoordSpace>"
  "schunk_api/PositionAPICoordSpace")