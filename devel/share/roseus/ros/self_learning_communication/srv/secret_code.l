;; Auto-generated. Do not edit!


(when (boundp 'self_learning_communication::secret_code)
  (if (not (find-package "SELF_LEARNING_COMMUNICATION"))
    (make-package "SELF_LEARNING_COMMUNICATION"))
  (shadow 'secret_code (find-package "SELF_LEARNING_COMMUNICATION")))
(unless (find-package "SELF_LEARNING_COMMUNICATION::SECRET_CODE")
  (make-package "SELF_LEARNING_COMMUNICATION::SECRET_CODE"))
(unless (find-package "SELF_LEARNING_COMMUNICATION::SECRET_CODEREQUEST")
  (make-package "SELF_LEARNING_COMMUNICATION::SECRET_CODEREQUEST"))
(unless (find-package "SELF_LEARNING_COMMUNICATION::SECRET_CODERESPONSE")
  (make-package "SELF_LEARNING_COMMUNICATION::SECRET_CODERESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass self_learning_communication::secret_codeRequest
  :super ros::object
  :slots (_secret_code_front ))

(defmethod self_learning_communication::secret_codeRequest
  (:init
   (&key
    ((:secret_code_front __secret_code_front) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _secret_code_front __secret_code_front)
   self)
  (:secret_code_front
   (&rest __secret_code_front)
   (if (keywordp (car __secret_code_front))
       (send* _secret_code_front __secret_code_front)
     (progn
       (if __secret_code_front (setq _secret_code_front (car __secret_code_front)))
       _secret_code_front)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _secret_code_front
    (send _secret_code_front :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _secret_code_front
       (send _secret_code_front :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _secret_code_front
     (send _secret_code_front :deserialize buf ptr-) (incf ptr- (send _secret_code_front :serialization-length))
   ;;
   self)
  )

(defclass self_learning_communication::secret_codeResponse
  :super ros::object
  :slots (_secret_code_next ))

(defmethod self_learning_communication::secret_codeResponse
  (:init
   (&key
    ((:secret_code_next __secret_code_next) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _secret_code_next __secret_code_next)
   self)
  (:secret_code_next
   (&rest __secret_code_next)
   (if (keywordp (car __secret_code_next))
       (send* _secret_code_next __secret_code_next)
     (progn
       (if __secret_code_next (setq _secret_code_next (car __secret_code_next)))
       _secret_code_next)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _secret_code_next
    (send _secret_code_next :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _secret_code_next
       (send _secret_code_next :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _secret_code_next
     (send _secret_code_next :deserialize buf ptr-) (incf ptr- (send _secret_code_next :serialization-length))
   ;;
   self)
  )

(defclass self_learning_communication::secret_code
  :super ros::object
  :slots ())

(setf (get self_learning_communication::secret_code :md5sum-) "4808b418c9da88e8e5bd0ad4c2770375")
(setf (get self_learning_communication::secret_code :datatype-) "self_learning_communication/secret_code")
(setf (get self_learning_communication::secret_code :request) self_learning_communication::secret_codeRequest)
(setf (get self_learning_communication::secret_code :response) self_learning_communication::secret_codeResponse)

(defmethod self_learning_communication::secret_codeRequest
  (:response () (instance self_learning_communication::secret_codeResponse :init)))

(setf (get self_learning_communication::secret_codeRequest :md5sum-) "4808b418c9da88e8e5bd0ad4c2770375")
(setf (get self_learning_communication::secret_codeRequest :datatype-) "self_learning_communication/secret_codeRequest")
(setf (get self_learning_communication::secret_codeRequest :definition-)
      "std_msgs/String secret_code_front

================================================================================
MSG: std_msgs/String
string data
---
std_msgs/String secret_code_next

================================================================================
MSG: std_msgs/String
string data
")

(setf (get self_learning_communication::secret_codeResponse :md5sum-) "4808b418c9da88e8e5bd0ad4c2770375")
(setf (get self_learning_communication::secret_codeResponse :datatype-) "self_learning_communication/secret_codeResponse")
(setf (get self_learning_communication::secret_codeResponse :definition-)
      "std_msgs/String secret_code_front

================================================================================
MSG: std_msgs/String
string data
---
std_msgs/String secret_code_next

================================================================================
MSG: std_msgs/String
string data
")



(provide :self_learning_communication/secret_code "4808b418c9da88e8e5bd0ad4c2770375")


