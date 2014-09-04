; Auto-generated. Do not edit!


(cl:in-package cob_srvs-srv)


;//! \htmlinclude SetJointStiffness-request.msg.html

(cl:defclass <SetJointStiffness-request> (roslisp-msg-protocol:ros-message)
  ((joint_stiffness
    :reader joint_stiffness
    :initarg :joint_stiffness
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetJointStiffness-request (<SetJointStiffness-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJointStiffness-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJointStiffness-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<SetJointStiffness-request> is deprecated: use cob_srvs-srv:SetJointStiffness-request instead.")))

(cl:ensure-generic-function 'joint_stiffness-val :lambda-list '(m))
(cl:defmethod joint_stiffness-val ((m <SetJointStiffness-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:joint_stiffness-val is deprecated.  Use cob_srvs-srv:joint_stiffness instead.")
  (joint_stiffness m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJointStiffness-request>) ostream)
  "Serializes a message object of type '<SetJointStiffness-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_stiffness))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joint_stiffness))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJointStiffness-request>) istream)
  "Deserializes a message object of type '<SetJointStiffness-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_stiffness) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_stiffness)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJointStiffness-request>)))
  "Returns string type for a service object of type '<SetJointStiffness-request>"
  "cob_srvs/SetJointStiffnessRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointStiffness-request)))
  "Returns string type for a service object of type 'SetJointStiffness-request"
  "cob_srvs/SetJointStiffnessRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJointStiffness-request>)))
  "Returns md5sum for a message object of type '<SetJointStiffness-request>"
  "2ae9ddd5d3294ccf3c876d966e4e11a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJointStiffness-request)))
  "Returns md5sum for a message object of type 'SetJointStiffness-request"
  "2ae9ddd5d3294ccf3c876d966e4e11a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJointStiffness-request>)))
  "Returns full string definition for message of type '<SetJointStiffness-request>"
  (cl:format cl:nil "float32[] joint_stiffness~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJointStiffness-request)))
  "Returns full string definition for message of type 'SetJointStiffness-request"
  (cl:format cl:nil "float32[] joint_stiffness~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJointStiffness-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_stiffness) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJointStiffness-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJointStiffness-request
    (cl:cons ':joint_stiffness (joint_stiffness msg))
))
;//! \htmlinclude SetJointStiffness-response.msg.html

(cl:defclass <SetJointStiffness-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetJointStiffness-response (<SetJointStiffness-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJointStiffness-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJointStiffness-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_srvs-srv:<SetJointStiffness-response> is deprecated: use cob_srvs-srv:SetJointStiffness-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetJointStiffness-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:success-val is deprecated.  Use cob_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <SetJointStiffness-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_srvs-srv:error_message-val is deprecated.  Use cob_srvs-srv:error_message instead.")
  (error_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJointStiffness-response>) ostream)
  "Serializes a message object of type '<SetJointStiffness-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'success) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'error_message) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJointStiffness-response>) istream)
  "Deserializes a message object of type '<SetJointStiffness-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'success) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'error_message) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJointStiffness-response>)))
  "Returns string type for a service object of type '<SetJointStiffness-response>"
  "cob_srvs/SetJointStiffnessResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointStiffness-response)))
  "Returns string type for a service object of type 'SetJointStiffness-response"
  "cob_srvs/SetJointStiffnessResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJointStiffness-response>)))
  "Returns md5sum for a message object of type '<SetJointStiffness-response>"
  "2ae9ddd5d3294ccf3c876d966e4e11a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJointStiffness-response)))
  "Returns md5sum for a message object of type 'SetJointStiffness-response"
  "2ae9ddd5d3294ccf3c876d966e4e11a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJointStiffness-response>)))
  "Returns full string definition for message of type '<SetJointStiffness-response>"
  (cl:format cl:nil "std_msgs/Bool success~%std_msgs/String error_message~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJointStiffness-response)))
  "Returns full string definition for message of type 'SetJointStiffness-response"
  (cl:format cl:nil "std_msgs/Bool success~%std_msgs/String error_message~%~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJointStiffness-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'success))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'error_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJointStiffness-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJointStiffness-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_message (error_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetJointStiffness)))
  'SetJointStiffness-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetJointStiffness)))
  'SetJointStiffness-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointStiffness)))
  "Returns string type for a service object of type '<SetJointStiffness>"
  "cob_srvs/SetJointStiffness")