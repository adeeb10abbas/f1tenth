; Auto-generated. Do not edit!


(cl:in-package lab1-msg)


;//! \htmlinclude LaserScan.msg.html

(cl:defclass <LaserScan> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (range_min
    :reader range_min
    :initarg :range_min
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64))
   (range_max
    :reader range_max
    :initarg :range_max
    :type std_msgs-msg:Float64
    :initform (cl:make-instance 'std_msgs-msg:Float64)))
)

(cl:defclass LaserScan (<LaserScan>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaserScan>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaserScan)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lab1-msg:<LaserScan> is deprecated: use lab1-msg:LaserScan instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LaserScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lab1-msg:header-val is deprecated.  Use lab1-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'range_min-val :lambda-list '(m))
(cl:defmethod range_min-val ((m <LaserScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lab1-msg:range_min-val is deprecated.  Use lab1-msg:range_min instead.")
  (range_min m))

(cl:ensure-generic-function 'range_max-val :lambda-list '(m))
(cl:defmethod range_max-val ((m <LaserScan>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lab1-msg:range_max-val is deprecated.  Use lab1-msg:range_max instead.")
  (range_max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaserScan>) ostream)
  "Serializes a message object of type '<LaserScan>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'range_min) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'range_max) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaserScan>) istream)
  "Deserializes a message object of type '<LaserScan>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'range_min) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'range_max) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaserScan>)))
  "Returns string type for a message object of type '<LaserScan>"
  "lab1/LaserScan")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaserScan)))
  "Returns string type for a message object of type 'LaserScan"
  "lab1/LaserScan")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaserScan>)))
  "Returns md5sum for a message object of type '<LaserScan>"
  "41e2b1d7eaaa6f5d0dacd58459ae11d9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaserScan)))
  "Returns md5sum for a message object of type 'LaserScan"
  "41e2b1d7eaaa6f5d0dacd58459ae11d9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaserScan>)))
  "Returns full string definition for message of type '<LaserScan>"
  (cl:format cl:nil "std_msgs/Header header~%std_msgs/Float64 range_min~%std_msgs/Float64 range_max~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaserScan)))
  "Returns full string definition for message of type 'LaserScan"
  (cl:format cl:nil "std_msgs/Header header~%std_msgs/Float64 range_min~%std_msgs/Float64 range_max~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaserScan>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'range_min))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'range_max))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaserScan>))
  "Converts a ROS message object to a list"
  (cl:list 'LaserScan
    (cl:cons ':header (header msg))
    (cl:cons ':range_min (range_min msg))
    (cl:cons ':range_max (range_max msg))
))
