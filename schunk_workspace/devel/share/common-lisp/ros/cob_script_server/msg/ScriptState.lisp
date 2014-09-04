; Auto-generated. Do not edit!


(cl:in-package cob_script_server-msg)


;//! \htmlinclude ScriptState.msg.html

(cl:defclass <ScriptState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (number
    :reader number
    :initarg :number
    :type cl:fixnum
    :initform 0)
   (function_name
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
   (full_graph_name
    :reader full_graph_name
    :initarg :full_graph_name
    :type cl:string
    :initform "")
   (state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0)
   (error_code
    :reader error_code
    :initarg :error_code
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ScriptState (<ScriptState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ScriptState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ScriptState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_script_server-msg:<ScriptState> is deprecated: use cob_script_server-msg:ScriptState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ScriptState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_script_server-msg:header-val is deprecated.  Use cob_script_server-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'number-val :lambda-list '(m))
(cl:defmethod number-val ((m <ScriptState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_script_server-msg:number-val is deprecated.  Use cob_script_server-msg:number instead.")
  (number m))

(cl:ensure-generic-function 'function_name-val :lambda-list '(m))
(cl:defmethod function_name-val ((m <ScriptState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_script_server-msg:function_name-val is deprecated.  Use cob_script_server-msg:function_name instead.")
  (function_name m))

(cl:ensure-generic-function 'component_name-val :lambda-list '(m))
(cl:defmethod component_name-val ((m <ScriptState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_script_server-msg:component_name-val is deprecated.  Use cob_script_server-msg:component_name instead.")
  (component_name m))

(cl:ensure-generic-function 'parameter_name-val :lambda-list '(m))
(cl:defmethod parameter_name-val ((m <ScriptState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_script_server-msg:parameter_name-val is deprecated.  Use cob_script_server-msg:parameter_name instead.")
  (parameter_name m))

(cl:ensure-generic-function 'full_graph_name-val :lambda-list '(m))
(cl:defmethod full_graph_name-val ((m <ScriptState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_script_server-msg:full_graph_name-val is deprecated.  Use cob_script_server-msg:full_graph_name instead.")
  (full_graph_name m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ScriptState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_script_server-msg:state-val is deprecated.  Use cob_script_server-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'error_code-val :lambda-list '(m))
(cl:defmethod error_code-val ((m <ScriptState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_script_server-msg:error_code-val is deprecated.  Use cob_script_server-msg:error_code instead.")
  (error_code m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ScriptState>)))
    "Constants for message type '<ScriptState>"
  '((:UNKNOWN . 0)
    (:ACTIVE . 1)
    (:SUCCEEDED . 2)
    (:FAILED . 3)
    (:PAUSED . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ScriptState)))
    "Constants for message type 'ScriptState"
  '((:UNKNOWN . 0)
    (:ACTIVE . 1)
    (:SUCCEEDED . 2)
    (:FAILED . 3)
    (:PAUSED . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ScriptState>) ostream)
  "Serializes a message object of type '<ScriptState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'number)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'full_graph_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'full_graph_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'error_code)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ScriptState>) istream)
  "Deserializes a message object of type '<ScriptState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
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
      (cl:setf (cl:slot-value msg 'full_graph_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'full_graph_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_code) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ScriptState>)))
  "Returns string type for a message object of type '<ScriptState>"
  "cob_script_server/ScriptState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ScriptState)))
  "Returns string type for a message object of type 'ScriptState"
  "cob_script_server/ScriptState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ScriptState>)))
  "Returns md5sum for a message object of type '<ScriptState>"
  "4981a5a5be8dbf926085d25a1acf43ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ScriptState)))
  "Returns md5sum for a message object of type 'ScriptState"
  "4981a5a5be8dbf926085d25a1acf43ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ScriptState>)))
  "Returns full string definition for message of type '<ScriptState>"
  (cl:format cl:nil "Header header~%int16 number~%string function_name~%string component_name~%string parameter_name~%string full_graph_name~%~%# Possible execution states~%byte UNKNOWN=0~%byte ACTIVE=1~%byte SUCCEEDED=2~%byte FAILED=3~%byte PAUSED=4~%~%byte state # state of execution~%int16 error_code # current error_code for state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ScriptState)))
  "Returns full string definition for message of type 'ScriptState"
  (cl:format cl:nil "Header header~%int16 number~%string function_name~%string component_name~%string parameter_name~%string full_graph_name~%~%# Possible execution states~%byte UNKNOWN=0~%byte ACTIVE=1~%byte SUCCEEDED=2~%byte FAILED=3~%byte PAUSED=4~%~%byte state # state of execution~%int16 error_code # current error_code for state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ScriptState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     4 (cl:length (cl:slot-value msg 'function_name))
     4 (cl:length (cl:slot-value msg 'component_name))
     4 (cl:length (cl:slot-value msg 'parameter_name))
     4 (cl:length (cl:slot-value msg 'full_graph_name))
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ScriptState>))
  "Converts a ROS message object to a list"
  (cl:list 'ScriptState
    (cl:cons ':header (header msg))
    (cl:cons ':number (number msg))
    (cl:cons ':function_name (function_name msg))
    (cl:cons ':component_name (component_name msg))
    (cl:cons ':parameter_name (parameter_name msg))
    (cl:cons ':full_graph_name (full_graph_name msg))
    (cl:cons ':state (state msg))
    (cl:cons ':error_code (error_code msg))
))
