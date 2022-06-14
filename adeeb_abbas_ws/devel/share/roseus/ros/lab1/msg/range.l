;; Auto-generated. Do not edit!


(when (boundp 'lab1::range)
  (if (not (find-package "LAB1"))
    (make-package "LAB1"))
  (shadow 'range (find-package "LAB1")))
(unless (find-package "LAB1::RANGE")
  (make-package "LAB1::RANGE"))

(in-package "ROS")
;;//! \htmlinclude range.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lab1::range
  :super ros::object
  :slots (_header _overall_range_min _overall_range_max ))

(defmethod lab1::range
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:overall_range_min __overall_range_min) (instance std_msgs::Float64 :init))
    ((:overall_range_max __overall_range_max) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _overall_range_min __overall_range_min)
   (setq _overall_range_max __overall_range_max)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:overall_range_min
   (&rest __overall_range_min)
   (if (keywordp (car __overall_range_min))
       (send* _overall_range_min __overall_range_min)
     (progn
       (if __overall_range_min (setq _overall_range_min (car __overall_range_min)))
       _overall_range_min)))
  (:overall_range_max
   (&rest __overall_range_max)
   (if (keywordp (car __overall_range_max))
       (send* _overall_range_max __overall_range_max)
     (progn
       (if __overall_range_max (setq _overall_range_max (car __overall_range_max)))
       _overall_range_max)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Float64 _overall_range_min
    (send _overall_range_min :serialization-length)
    ;; std_msgs/Float64 _overall_range_max
    (send _overall_range_max :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Float64 _overall_range_min
       (send _overall_range_min :serialize s)
     ;; std_msgs/Float64 _overall_range_max
       (send _overall_range_max :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Float64 _overall_range_min
     (send _overall_range_min :deserialize buf ptr-) (incf ptr- (send _overall_range_min :serialization-length))
   ;; std_msgs/Float64 _overall_range_max
     (send _overall_range_max :deserialize buf ptr-) (incf ptr- (send _overall_range_max :serialization-length))
   ;;
   self)
  )

(setf (get lab1::range :md5sum-) "b9a0dadad90f0aa59a1e41e20d3b947a")
(setf (get lab1::range :datatype-) "lab1/range")
(setf (get lab1::range :definition-)
      "std_msgs/Header header
std_msgs/Float64 overall_range_min
std_msgs/Float64 overall_range_max
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: std_msgs/Float64
float64 data
")



(provide :lab1/range "b9a0dadad90f0aa59a1e41e20d3b947a")


