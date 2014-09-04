; Auto-generated. Do not edit!


(cl:in-package cob_camera_sensors-srv)


;//! \htmlinclude AcquireCalibrationImages-request.msg.html

(cl:defclass <AcquireCalibrationImages-request> (roslisp-msg-protocol:ros-message)
  ((reset_image_counter
    :reader reset_image_counter
    :initarg :reset_image_counter
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass AcquireCalibrationImages-request (<AcquireCalibrationImages-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AcquireCalibrationImages-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AcquireCalibrationImages-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_camera_sensors-srv:<AcquireCalibrationImages-request> is deprecated: use cob_camera_sensors-srv:AcquireCalibrationImages-request instead.")))

(cl:ensure-generic-function 'reset_image_counter-val :lambda-list '(m))
(cl:defmethod reset_image_counter-val ((m <AcquireCalibrationImages-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_camera_sensors-srv:reset_image_counter-val is deprecated.  Use cob_camera_sensors-srv:reset_image_counter instead.")
  (reset_image_counter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AcquireCalibrationImages-request>) ostream)
  "Serializes a message object of type '<AcquireCalibrationImages-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset_image_counter) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AcquireCalibrationImages-request>) istream)
  "Deserializes a message object of type '<AcquireCalibrationImages-request>"
    (cl:setf (cl:slot-value msg 'reset_image_counter) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AcquireCalibrationImages-request>)))
  "Returns string type for a service object of type '<AcquireCalibrationImages-request>"
  "cob_camera_sensors/AcquireCalibrationImagesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AcquireCalibrationImages-request)))
  "Returns string type for a service object of type 'AcquireCalibrationImages-request"
  "cob_camera_sensors/AcquireCalibrationImagesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AcquireCalibrationImages-request>)))
  "Returns md5sum for a message object of type '<AcquireCalibrationImages-request>"
  "e169cf33c98571b589b34472dd844790")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AcquireCalibrationImages-request)))
  "Returns md5sum for a message object of type 'AcquireCalibrationImages-request"
  "e169cf33c98571b589b34472dd844790")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AcquireCalibrationImages-request>)))
  "Returns full string definition for message of type '<AcquireCalibrationImages-request>"
  (cl:format cl:nil "bool reset_image_counter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AcquireCalibrationImages-request)))
  "Returns full string definition for message of type 'AcquireCalibrationImages-request"
  (cl:format cl:nil "bool reset_image_counter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AcquireCalibrationImages-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AcquireCalibrationImages-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AcquireCalibrationImages-request
    (cl:cons ':reset_image_counter (reset_image_counter msg))
))
;//! \htmlinclude AcquireCalibrationImages-response.msg.html

(cl:defclass <AcquireCalibrationImages-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass AcquireCalibrationImages-response (<AcquireCalibrationImages-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AcquireCalibrationImages-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AcquireCalibrationImages-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_camera_sensors-srv:<AcquireCalibrationImages-response> is deprecated: use cob_camera_sensors-srv:AcquireCalibrationImages-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AcquireCalibrationImages-response>) ostream)
  "Serializes a message object of type '<AcquireCalibrationImages-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AcquireCalibrationImages-response>) istream)
  "Deserializes a message object of type '<AcquireCalibrationImages-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AcquireCalibrationImages-response>)))
  "Returns string type for a service object of type '<AcquireCalibrationImages-response>"
  "cob_camera_sensors/AcquireCalibrationImagesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AcquireCalibrationImages-response)))
  "Returns string type for a service object of type 'AcquireCalibrationImages-response"
  "cob_camera_sensors/AcquireCalibrationImagesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AcquireCalibrationImages-response>)))
  "Returns md5sum for a message object of type '<AcquireCalibrationImages-response>"
  "e169cf33c98571b589b34472dd844790")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AcquireCalibrationImages-response)))
  "Returns md5sum for a message object of type 'AcquireCalibrationImages-response"
  "e169cf33c98571b589b34472dd844790")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AcquireCalibrationImages-response>)))
  "Returns full string definition for message of type '<AcquireCalibrationImages-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AcquireCalibrationImages-response)))
  "Returns full string definition for message of type 'AcquireCalibrationImages-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AcquireCalibrationImages-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AcquireCalibrationImages-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AcquireCalibrationImages-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AcquireCalibrationImages)))
  'AcquireCalibrationImages-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AcquireCalibrationImages)))
  'AcquireCalibrationImages-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AcquireCalibrationImages)))
  "Returns string type for a service object of type '<AcquireCalibrationImages>"
  "cob_camera_sensors/AcquireCalibrationImages")