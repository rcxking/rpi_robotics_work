; Auto-generated. Do not edit!


(cl:in-package cob_script_server-msg)


;//! \htmlinclude ScriptGoal.msg.html

(cl:defclass <ScriptGoal> (roslisp-msg-protocol:ros-message)
  ((function_name
    :reader function_name
    :initarg :function_name
    :type cl:string
    :initform "")
   (component_name
    :reader component_name
    :initarg :component_name
    :type cl:string
    :initform "")
   (parameter_name
    :reader parameter_name
    :initarg :parameter_name
    :type cl:string
    :initform "")
   (mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (service_name
    :reader service_name
    :initarg :service_name
    :type cl:string
    :initform "")
   (duration
    :reader duration
    :initarg :duration
    :type cl:float
    :initform 0.0)
   (planning
    :reader planning
    :initarg :planning
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ScriptGoal (<ScriptGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScriptGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScriptGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_script_server-msg:<ScriptGoal> is deprecated: use cob_script_server-msg:ScriptGoal instead.")))

(cl:ensure-generic-function 'function_name-val :lambda-list '(m))
(cl:defmethod function_name-val ((m <ScriptGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_script_server-msg:function_name-val is deprecated.  Use cob_script_server-msg:function_name instead.")
  (function_name m))

(cl:ensure-generic-function 'component_name-val :lambda-list '(m))
(cl:defmethod component_name-val ((m <ScriptGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_script_server-msg:component_name-val is deprecated.  Use cob_script_server-msg:component_name instead.")
  (component_name m))

(cl:ensure-generic-function 'parameter_name-val :lambda-list '(m))
(cl:defmethod parameter_name-val ((m <ScriptGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_script_server-msg:parameter_name-val is deprecated.  Use cob_script_server-msg:parameter_name instead.")
  (parameter_name m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <ScriptGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_script_server-msg:mode-val is deprecated.  Use cob_script_server-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'service_name-val :lambda-list '(m))
(cl:defmethod service_name-val ((m <ScriptGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_script_server-msg:service_name-val is deprecated.  Use cob_script_server-msg:service_name instead.")
  (service_name m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <ScriptGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_script_server-msg:duration-val is deprecated.  Use cob_script_server-msg:duration instead.")
  (duration m))

(cl:ensure-generic-function 'planning-val :lambda-list '(m))
(cl:defmethod planning-val ((m <ScriptGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_script_server-msg:planning-val is deprecated.  Use cob_script_server-msg:planning instead.")
  (planning m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScriptGoal>) ostream)
  "Serializes a message object of type '<ScriptGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'function_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'function_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'component_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'component_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'parameter_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'parameter_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'service_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'service_name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'planning) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScriptGoal>) istream)
  "Deserializes a message object of type '<ScriptGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'function_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'function_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'component_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'component_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'parameter_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'parameter_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'service_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'service_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'planning) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScriptGoal>)))
  "Returns string type for a message object of type '<ScriptGoal>"
  "cob_script_server/ScriptGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScriptGoal)))
  "Returns string type for a message object of type 'ScriptGoal"
  "cob_script_server/ScriptGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScriptGoal>)))
  "Returns md5sum for a message object of type '<ScriptGoal>"
  "0a40a194b72e6783b1b8bec8d1c28c7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScriptGoal)))
  "Returns md5sum for a message object of type 'ScriptGoal"
  "0a40a194b72e6783b1b8bec8d1c28c7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScriptGoal>)))
  "Returns full string definition for message of type '<ScriptGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%string function_name~%string component_name~%string parameter_name~%string mode~%string service_name~%float32 duration~%bool planning~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScriptGoal)))
  "Returns full string definition for message of type 'ScriptGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%string function_name~%string component_name~%string parameter_name~%string mode~%string service_name~%float32 duration~%bool planning~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScriptGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'function_name))
     4 (cl:length (cl:slot-value msg 'component_name))
     4 (cl:length (cl:slot-value msg 'parameter_name))
     4 (cl:length (cl:slot-value msg 'mode))
     4 (cl:length (cl:slot-value msg 'service_name))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScriptGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ScriptGoal
    (cl:cons ':function_name (function_name msg))
    (cl:cons ':component_name (component_name msg))
    (cl:cons ':parameter_name (parameter_name msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':service_name (service_name msg))
    (cl:cons ':duration (duration msg))
    (cl:cons ':planning (planning msg))
))
