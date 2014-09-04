; Auto-generated. Do not edit!


(cl:in-package cob_light-msg)


;//! \htmlinclude LightMode.msg.html

(cl:defclass <LightMode> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (color
    :reader color
    :initarg :color
    :type std_msgs-msg:ColorRGBA
    :initform (cl:make-instance 'std_msgs-msg:ColorRGBA))
   (frequency
    :reader frequency
    :initarg :frequency
    :type cl:float
    :initform 0.0)
   (timeout
    :reader timeout
    :initarg :timeout
    :type cl:float
    :initform 0.0)
   (pulses
    :reader pulses
    :initarg :pulses
    :type cl:integer
    :initform 0)
   (priority
    :reader priority
    :initarg :priority
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LightMode (<LightMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LightMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LightMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_light-msg:<LightMode> is deprecated: use cob_light-msg:LightMode instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <LightMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_light-msg:mode-val is deprecated.  Use cob_light-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <LightMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_light-msg:color-val is deprecated.  Use cob_light-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <LightMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_light-msg:frequency-val is deprecated.  Use cob_light-msg:frequency instead.")
  (frequency m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <LightMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_light-msg:timeout-val is deprecated.  Use cob_light-msg:timeout instead.")
  (timeout m))

(cl:ensure-generic-function 'pulses-val :lambda-list '(m))
(cl:defmethod pulses-val ((m <LightMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_light-msg:pulses-val is deprecated.  Use cob_light-msg:pulses instead.")
  (pulses m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <LightMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_light-msg:priority-val is deprecated.  Use cob_light-msg:priority instead.")
  (priority m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LightMode>)))
    "Constants for message type '<LightMode>"
  '((:NONE . 0)
    (:STATIC . 1)
    (:FLASH . 2)
    (:BREATH . 3)
    (:BREATH_COLOR . 4)
    (:FADE_COLOR . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LightMode)))
    "Constants for message type 'LightMode"
  '((:NONE . 0)
    (:STATIC . 1)
    (:FLASH . 2)
    (:BREATH . 3)
    (:BREATH_COLOR . 4)
    (:FADE_COLOR . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LightMode>) ostream)
  "Serializes a message object of type '<LightMode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'color) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frequency))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'timeout))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'pulses)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'priority)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LightMode>) istream)
  "Deserializes a message object of type '<LightMode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'color) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frequency) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timeout) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pulses) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'priority) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LightMode>)))
  "Returns string type for a message object of type '<LightMode>"
  "cob_light/LightMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LightMode)))
  "Returns string type for a message object of type 'LightMode"
  "cob_light/LightMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LightMode>)))
  "Returns md5sum for a message object of type '<LightMode>"
  "5c61cdd41b56356f16e4e7ab38a77236")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LightMode)))
  "Returns md5sum for a message object of type 'LightMode"
  "5c61cdd41b56356f16e4e7ab38a77236")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LightMode>)))
  "Returns full string definition for message of type '<LightMode>"
  (cl:format cl:nil "uint8 mode~%uint8 NONE = 0 			# will turn everything off~%uint8 STATIC = 1 		# will change the LEDs to \"color\"~%uint8 FLASH = 2 		# will change the LEDs frequently with \"frequency\" from \"color\" to black~%uint8 BREATH = 3 		# will change the LEDs smoothly with \"frequency\" from \"color\" to black~%uint8 BREATH_COLOR = 4 	# will change the LEDs smoothly with \"frequency\" from \"color\" to black~%						# and flips color in time~%uint8 FADE_COLOR = 5 	# will fade the colors in rainbow~%~%std_msgs/ColorRGBA color #the color which will be used~%float32 frequency 		# in Hz~%float32 timeout 		# in s, requested mode will be executed for max timout s.~%						# default is 0 and meens no timeout.~%int32 pulses 			# spezifies the amount of pulses which will be executed.~%			 			# eg: mode = flash, pulses = 2. Meens the light will flash two times~%int8 priority 			# priority [-20,20] default = 0. Modes with same or higher priorities will ~%						# be executed.~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LightMode)))
  "Returns full string definition for message of type 'LightMode"
  (cl:format cl:nil "uint8 mode~%uint8 NONE = 0 			# will turn everything off~%uint8 STATIC = 1 		# will change the LEDs to \"color\"~%uint8 FLASH = 2 		# will change the LEDs frequently with \"frequency\" from \"color\" to black~%uint8 BREATH = 3 		# will change the LEDs smoothly with \"frequency\" from \"color\" to black~%uint8 BREATH_COLOR = 4 	# will change the LEDs smoothly with \"frequency\" from \"color\" to black~%						# and flips color in time~%uint8 FADE_COLOR = 5 	# will fade the colors in rainbow~%~%std_msgs/ColorRGBA color #the color which will be used~%float32 frequency 		# in Hz~%float32 timeout 		# in s, requested mode will be executed for max timout s.~%						# default is 0 and meens no timeout.~%int32 pulses 			# spezifies the amount of pulses which will be executed.~%			 			# eg: mode = flash, pulses = 2. Meens the light will flash two times~%int8 priority 			# priority [-20,20] default = 0. Modes with same or higher priorities will ~%						# be executed.~%================================================================================~%MSG: std_msgs/ColorRGBA~%float32 r~%float32 g~%float32 b~%float32 a~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LightMode>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'color))
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LightMode>))
  "Converts a ROS message object to a list"
  (cl:list 'LightMode
    (cl:cons ':mode (mode msg))
    (cl:cons ':color (color msg))
    (cl:cons ':frequency (frequency msg))
    (cl:cons ':timeout (timeout msg))
    (cl:cons ':pulses (pulses msg))
    (cl:cons ':priority (priority msg))
))
