;; Auto-generated. Do not edit!


(when (boundp 'lab1::LaserScan)
  (if (not (find-package "LAB1"))
    (make-package "LAB1"))
  (shadow 'LaserScan (find-package "LAB1")))
(unless (find-package "LAB1::LASERSCAN")
  (make-package "LAB1::LASERSCAN"))

(in-package "ROS")
;;//! \htmlinclude LaserScan.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lab1::LaserScan
  :super ros::object
  :slots (_header _range_min _range_max ))

(defmethod lab1::LaserScan
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:range_min __range_min) (instance std_msgs::Float64 :init))
    ((:range_max __range_max) (instance std_msgs::Float64 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _range_min __range_min)
   (setq _range_max __range_max)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:range_min
   (&rest __range_min)
   (if (keywordp (car __range_min))
       (send* _range_min __range_min)
     (progn
       (if __range_min (setq _range_min (car __range_min)))
       _range_min)))
  (:range_max
   (&rest __range_max)
   (if (keywordp (car __range_max))
       (send* _range_max __range_max)
     (progn
       (if __range_max (setq _range_max (car __range_max)))
       _range_max)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; std_msgs/Float64 _range_min
    (send _range_min :serialization-length)
    ;; std_msgs/Float64 _range_max
    (send _range_max :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; std_msgs/Float64 _range_min
       (send _range_min :serialize s)
     ;; std_msgs/Float64 _range_max
       (send _range_max :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; std_msgs/Float64 _range_min
     (send _range_min :deserialize buf ptr-) (incf ptr- (send _range_min :serialization-length))
   ;; std_msgs/Float64 _range_max
     (send _range_max :deserialize buf ptr-) (incf ptr- (send _range_max :serialization-length))
   ;;
   self)
  )

(setf (get lab1::LaserScan :md5sum-) "41e2b1d7eaaa6f5d0dacd58459ae11d9")
(setf (get lab1::LaserScan :datatype-) "lab1/LaserScan")
(setf (get lab1::LaserScan :definition-)
      "std_msgs/Header header
std_msgs/Float64 range_min
std_msgs/Float64 range_max
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



(provide :lab1/LaserScan "41e2b1d7eaaa6f5d0dacd58459ae11d9")


