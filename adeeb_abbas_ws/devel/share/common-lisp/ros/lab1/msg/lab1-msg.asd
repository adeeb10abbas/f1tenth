
(cl:in-package :asdf)

(defsystem "lab1-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "LaserScan" :depends-on ("_package_LaserScan"))
    (:file "_package_LaserScan" :depends-on ("_package"))
    (:file "range" :depends-on ("_package_range"))
    (:file "_package_range" :depends-on ("_package"))
  ))