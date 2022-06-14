; Auto-generated. Do not edit!


(cl:in-package lab1-msg)


;//! \htmlinclude range.msg.html

(cl:defclass <range> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (overall_range_min
    :reader overall_range_min
    :initarg :overall_range_min
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (overall_range_max
    :reader overall_range_max
    :initarg :overall_range_max
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass range (<range>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <range>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'range)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lab1-msg:<range> is deprecated: use lab1-msg:range instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <range>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lab1-msg:header-val is deprecated.  Use lab1-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'overall_range_min-val :lambda-list '(m))
(cl:defmethod overall_range_min-val ((m <range>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lab1-msg:overall_range_min-val is deprecated.  Use lab1-msg:overall_range_min instead.")
  (overall_range_min m))

(cl:ensure-generic-function 'overall_range_max-val :lambda-list '(m))
(cl:defmethod overall_range_max-val ((m <range>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lab1-msg:overall_range_max-val is deprecated.  Use lab1-msg:overall_range_max instead.")
  (overall_range_max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <range>) ostream)
  "Serializes a message object of type '<range>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'overall_range_min) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'overall_range_max) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <range>) istream)
  "Deserializes a message object of type '<range>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'overall_range_min) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'overall_range_max) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<range>)))
  "Returns string type for a message object of type '<range>"
  "lab1/range")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'range)))
  "Returns string type for a message object of type 'range"
  "lab1/range")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<range>)))
  "Returns md5sum for a message object of type '<range>"
  "b9a0dadad90f0aa59a1e41e20d3b947a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'range)))
  "Returns md5sum for a message object of type 'range"
  "b9a0dadad90f0aa59a1e41e20d3b947a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<range>)))
  "Returns full string definition for message of type '<range>"
  (cl:format cl:nil "std_msgs/Header header~%std_msgs/Float64 overall_range_min~%std_msgs/Float64 overall_range_max~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'range)))
  "Returns full string definition for message of type 'range"
  (cl:format cl:nil "std_msgs/Header header~%std_msgs/Float64 overall_range_min~%std_msgs/Float64 overall_range_max~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <range>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'overall_range_min))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'overall_range_max))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <range>))
  "Converts a ROS message object to a list"
  (cl:list 'range
    (cl:cons ':header (header msg))
    (cl:cons ':overall_range_min (overall_range_min msg))
    (cl:cons ':overall_range_max (overall_range_max msg))
))
