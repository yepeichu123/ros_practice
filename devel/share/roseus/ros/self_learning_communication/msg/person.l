;; Auto-generated. Do not edit!


(when (boundp 'self_learning_communication::person)
  (if (not (find-package "SELF_LEARNING_COMMUNICATION"))
    (make-package "SELF_LEARNING_COMMUNICATION"))
  (shadow 'person (find-package "SELF_LEARNING_COMMUNICATION")))
(unless (find-package "SELF_LEARNING_COMMUNICATION::PERSON")
  (make-package "SELF_LEARNING_COMMUNICATION::PERSON"))

(in-package "ROS")
;;//! \htmlinclude person.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass self_learning_communication::person
  :super ros::object
  :slots (_name _age _sex ))

(defmethod self_learning_communication::person
  (:init
   (&key
    ((:name __name) (instance std_msgs::String :init))
    ((:age __age) (instance std_msgs::Int8 :init))
    ((:sex __sex) (instance std_msgs::Int8 :init))
    )
   (send-super :init)
   (setq _name __name)
   (setq _age __age)
   (setq _sex __sex)
   self)
  (:name
   (&rest __name)
   (if (keywordp (car __name))
       (send* _name __name)
     (progn
       (if __name (setq _name (car __name)))
       _name)))
  (:age
   (&rest __age)
   (if (keywordp (car __age))
       (send* _age __age)
     (progn
       (if __age (setq _age (car __age)))
       _age)))
  (:sex
   (&rest __sex)
   (if (keywordp (car __sex))
       (send* _sex __sex)
     (progn
       (if __sex (setq _sex (car __sex)))
       _sex)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _name
    (send _name :serialization-length)
    ;; std_msgs/Int8 _age
    (send _age :serialization-length)
    ;; std_msgs/Int8 _sex
    (send _sex :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _name
       (send _name :serialize s)
     ;; std_msgs/Int8 _age
       (send _age :serialize s)
     ;; std_msgs/Int8 _sex
       (send _sex :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _name
     (send _name :deserialize buf ptr-) (incf ptr- (send _name :serialization-length))
   ;; std_msgs/Int8 _age
     (send _age :deserialize buf ptr-) (incf ptr- (send _age :serialization-length))
   ;; std_msgs/Int8 _sex
     (send _sex :deserialize buf ptr-) (incf ptr- (send _sex :serialization-length))
   ;;
   self)
  )

(setf (get self_learning_communication::person :md5sum-) "04c7bee12efe24fd3e4de6b8844645fb")
(setf (get self_learning_communication::person :datatype-) "self_learning_communication/person")
(setf (get self_learning_communication::person :definition-)
      "std_msgs/String name
std_msgs/Int8 age
std_msgs/Int8 sex
================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: std_msgs/Int8
int8 data

")



(provide :self_learning_communication/person "04c7bee12efe24fd3e4de6b8844645fb")


