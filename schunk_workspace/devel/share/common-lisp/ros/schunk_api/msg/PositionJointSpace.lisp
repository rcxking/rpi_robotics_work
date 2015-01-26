; Auto-generated. Do not edit!


(cl:in-package schunk_api-msg)


;//! \htmlinclude PositionJointSpace.msg.html

(cl:defclass <PositionJointSpace> (roslisp-msg-protocol:ros-message)
  ((joint1Position
    :reader joint1Position
    :initarg :joint1Position
    :type cl:float
    :initform 0.0)
   (joint2Position
    :reader joint2Position
    :initarg :joint2Position
    :type cl:float
    :initform 0.0)
   (joint3Position
    :reader joint3Position
    :initarg :joint3Position
    :type cl:float
    :initform 0.0)
   (joint4Position
    :reader joint4Position
    :initarg :joint4Position
    :type cl:float
    :initform 0.0)
   (joint5Position
    :reader joint5Position
    :initarg :joint5Position
    :type cl:float
    :initform 0.0)
   (joint6Position
    :reader joint6Position
    :initarg :joint6Position
    :type cl:float
    :initform 0.0))
)

(cl:defclass PositionJointSpace (<PositionJointSpace>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositionJointSpace>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositionJointSpace)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name schunk_api-msg:<PositionJointSpace> is deprecated: use schunk_api-msg:PositionJointSpace instead.")))

(cl:ensure-generic-function 'joint1Position-val :lambda-list '(m))
(cl:defmethod joint1Position-val ((m <PositionJointSpace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader schunk_api-msg:joint1Position-val is deprecated.  Use schunk_api-msg:joint1Position instead.")
  (joint1Position m))

(cl:ensure-generic-function 'joint2Position-val :lambda-list '(m))
(cl:defmethod joint2Position-val ((m <PositionJointSpace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader schunk_api-msg:joint2Position-val is deprecated.  Use schunk_api-msg:joint2Position instead.")
  (joint2Position m))

(cl:ensure-generic-function 'joint3Position-val :lambda-list '(m))
(cl:defmethod joint3Position-val ((m <PositionJointSpace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader schunk_api-msg:joint3Position-val is deprecated.  Use schunk_api-msg:joint3Position instead.")
  (joint3Position m))

(cl:ensure-generic-function 'joint4Position-val :lambda-list '(m))
(cl:defmethod joint4Position-val ((m <PositionJointSpace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader schunk_api-msg:joint4Position-val is deprecated.  Use schunk_api-msg:joint4Position instead.")
  (joint4Position m))

(cl:ensure-generic-function 'joint5Position-val :lambda-list '(m))
(cl:defmethod joint5Position-val ((m <PositionJointSpace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader schunk_api-msg:joint5Position-val is deprecated.  Use schunk_api-msg:joint5Position instead.")
  (joint5Position m))

(cl:ensure-generic-function 'joint6Position-val :lambda-list '(m))
(cl:defmethod joint6Position-val ((m <PositionJointSpace>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader schunk_api-msg:joint6Position-val is deprecated.  Use schunk_api-msg:joint6Position instead.")
  (joint6Position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositionJointSpace>) ostream)
  "Serializes a message object of type '<PositionJointSpace>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint1Position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint2Position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint3Position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint4Position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint5Position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joint6Position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositionJointSpace>) istream)
  "Deserializes a message object of type '<PositionJointSpace>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint1Position) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint2Position) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint3Position) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint4Position) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint5Position) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joint6Position) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositionJointSpace>)))
  "Returns string type for a message object of type '<PositionJointSpace>"
  "schunk_api/PositionJointSpace")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositionJointSpace)))
  "Returns string type for a message object of type 'PositionJointSpace"
  "schunk_api/PositionJointSpace")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositionJointSpace>)))
  "Returns md5sum for a message object of type '<PositionJointSpace>"
  "aa74335262b2e770707f66d310a2112c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositionJointSpace)))
  "Returns md5sum for a message object of type 'PositionJointSpace"
  "aa74335262b2e770707f66d310a2112c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositionJointSpace>)))
  "Returns full string definition for message of type '<PositionJointSpace>"
  (cl:format cl:nil "float64 joint1Position~%float64 joint2Position~%float64 joint3Position~%float64 joint4Position ~%float64 joint5Position~%float64 joint6Position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositionJointSpace)))
  "Returns full string definition for message of type 'PositionJointSpace"
  (cl:format cl:nil "float64 joint1Position~%float64 joint2Position~%float64 joint3Position~%float64 joint4Position ~%float64 joint5Position~%float64 joint6Position~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositionJointSpace>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositionJointSpace>))
  "Converts a ROS message object to a list"
  (cl:list 'PositionJointSpace
    (cl:cons ':joint1Position (joint1Position msg))
    (cl:cons ':joint2Position (joint2Position msg))
    (cl:cons ':joint3Position (joint3Position msg))
    (cl:cons ':joint4Position (joint4Position msg))
    (cl:cons ':joint5Position (joint5Position msg))
    (cl:cons ':joint6Position (joint6Position msg))
))
