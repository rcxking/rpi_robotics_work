; Auto-generated. Do not edit!


(cl:in-package cob_camera_sensors-srv)


;//! \htmlinclude GetTOFImages-request.msg.html

(cl:defclass <GetTOFImages-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetTOFImages-request (<GetTOFImages-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTOFImages-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTOFImages-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_camera_sensors-srv:<GetTOFImages-request> is deprecated: use cob_camera_sensors-srv:GetTOFImages-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTOFImages-request>) ostream)
  "Serializes a message object of type '<GetTOFImages-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTOFImages-request>) istream)
  "Deserializes a message object of type '<GetTOFImages-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTOFImages-request>)))
  "Returns string type for a service object of type '<GetTOFImages-request>"
  "cob_camera_sensors/GetTOFImagesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTOFImages-request)))
  "Returns string type for a service object of type 'GetTOFImages-request"
  "cob_camera_sensors/GetTOFImagesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTOFImages-request>)))
  "Returns md5sum for a message object of type '<GetTOFImages-request>"
  "245ce4e6dd0ec61a5c674c8191a91877")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTOFImages-request)))
  "Returns md5sum for a message object of type 'GetTOFImages-request"
  "245ce4e6dd0ec61a5c674c8191a91877")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTOFImages-request>)))
  "Returns full string definition for message of type '<GetTOFImages-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTOFImages-request)))
  "Returns full string definition for message of type 'GetTOFImages-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTOFImages-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTOFImages-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTOFImages-request
))
;//! \htmlinclude GetTOFImages-response.msg.html

(cl:defclass <GetTOFImages-response> (roslisp-msg-protocol:ros-message)
  ((greyImage
    :reader greyImage
    :initarg :greyImage
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (xyzImage
    :reader xyzImage
    :initarg :xyzImage
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image)))
)

(cl:defclass GetTOFImages-response (<GetTOFImages-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTOFImages-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTOFImages-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_camera_sensors-srv:<GetTOFImages-response> is deprecated: use cob_camera_sensors-srv:GetTOFImages-response instead.")))

(cl:ensure-generic-function 'greyImage-val :lambda-list '(m))
(cl:defmethod greyImage-val ((m <GetTOFImages-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_camera_sensors-srv:greyImage-val is deprecated.  Use cob_camera_sensors-srv:greyImage instead.")
  (greyImage m))

(cl:ensure-generic-function 'xyzImage-val :lambda-list '(m))
(cl:defmethod xyzImage-val ((m <GetTOFImages-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_camera_sensors-srv:xyzImage-val is deprecated.  Use cob_camera_sensors-srv:xyzImage instead.")
  (xyzImage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTOFImages-response>) ostream)
  "Serializes a message object of type '<GetTOFImages-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'greyImage) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'xyzImage) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTOFImages-response>) istream)
  "Deserializes a message object of type '<GetTOFImages-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'greyImage) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'xyzImage) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTOFImages-response>)))
  "Returns string type for a service object of type '<GetTOFImages-response>"
  "cob_camera_sensors/GetTOFImagesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTOFImages-response)))
  "Returns string type for a service object of type 'GetTOFImages-response"
  "cob_camera_sensors/GetTOFImagesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTOFImages-response>)))
  "Returns md5sum for a message object of type '<GetTOFImages-response>"
  "245ce4e6dd0ec61a5c674c8191a91877")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTOFImages-response)))
  "Returns md5sum for a message object of type 'GetTOFImages-response"
  "245ce4e6dd0ec61a5c674c8191a91877")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTOFImages-response>)))
  "Returns full string definition for message of type '<GetTOFImages-response>"
  (cl:format cl:nil "sensor_msgs/Image greyImage~%sensor_msgs/Image xyzImage~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTOFImages-response)))
  "Returns full string definition for message of type 'GetTOFImages-response"
  (cl:format cl:nil "sensor_msgs/Image greyImage~%sensor_msgs/Image xyzImage~%~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTOFImages-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'greyImage))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'xyzImage))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTOFImages-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTOFImages-response
    (cl:cons ':greyImage (greyImage msg))
    (cl:cons ':xyzImage (xyzImage msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTOFImages)))
  'GetTOFImages-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTOFImages)))
  'GetTOFImages-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTOFImages)))
  "Returns string type for a service object of type '<GetTOFImages>"
  "cob_camera_sensors/GetTOFImages")