;; Auto-generated. Do not edit!


(when (boundp 'self_learning_communication::pose)
  (if (not (find-package "SELF_LEARNING_COMMUNICATION"))
    (make-package "SELF_LEARNING_COMMUNICATION"))
  (shadow 'pose (find-package "SELF_LEARNING_COMMUNICATION")))
(unless (find-package "SELF_LEARNING_COMMUNICATION::POSE")
  (make-package "SELF_LEARNING_COMMUNICATION::POSE"))

(in-package "ROS")
;;//! \htmlinclude pose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass self_learning_communication::pose
  :super ros::object
  :slots (_camera_id _camera_timestamp _camera_pose ))

(defmethod self_learning_communication::pose
  (:init
   (&key
    ((:camera_id __camera_id) (instance std_msgs::Int32 :init))
    ((:camera_timestamp __camera_timestamp) (instance std_msgs::Time :init))
    ((:camera_pose __camera_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _camera_id __camera_id)
   (setq _camera_timestamp __camera_timestamp)
   (setq _camera_pose __camera_pose)
   self)
  (:camera_id
   (&rest __camera_id)
   (if (keywordp (car __camera_id))
       (send* _camera_id __camera_id)
     (progn
       (if __camera_id (setq _camera_id (car __camera_id)))
       _camera_id)))
  (:camera_timestamp
   (&rest __camera_timestamp)
   (if (keywordp (car __camera_timestamp))
       (send* _camera_timestamp __camera_timestamp)
     (progn
       (if __camera_timestamp (setq _camera_timestamp (car __camera_timestamp)))
       _camera_timestamp)))
  (:camera_pose
   (&rest __camera_pose)
   (if (keywordp (car __camera_pose))
       (send* _camera_pose __camera_pose)
     (progn
       (if __camera_pose (setq _camera_pose (car __camera_pose)))
       _camera_pose)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Int32 _camera_id
    (send _camera_id :serialization-length)
    ;; std_msgs/Time _camera_timestamp
    (send _camera_timestamp :serialization-length)
    ;; geometry_msgs/Pose _camera_pose
    (send _camera_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Int32 _camera_id
       (send _camera_id :serialize s)
     ;; std_msgs/Time _camera_timestamp
       (send _camera_timestamp :serialize s)
     ;; geometry_msgs/Pose _camera_pose
       (send _camera_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Int32 _camera_id
     (send _camera_id :deserialize buf ptr-) (incf ptr- (send _camera_id :serialization-length))
   ;; std_msgs/Time _camera_timestamp
     (send _camera_timestamp :deserialize buf ptr-) (incf ptr- (send _camera_timestamp :serialization-length))
   ;; geometry_msgs/Pose _camera_pose
     (send _camera_pose :deserialize buf ptr-) (incf ptr- (send _camera_pose :serialization-length))
   ;;
   self)
  )

(setf (get self_learning_communication::pose :md5sum-) "54e782714e2aeb791673a0a14332f140")
(setf (get self_learning_communication::pose :datatype-) "self_learning_communication/pose")
(setf (get self_learning_communication::pose :definition-)
      "std_msgs/Int32 camera_id
std_msgs/Time camera_timestamp
geometry_msgs/Pose camera_pose

================================================================================
MSG: std_msgs/Int32
int32 data
================================================================================
MSG: std_msgs/Time
time data

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :self_learning_communication/pose "54e782714e2aeb791673a0a14332f140")


