; Auto-generated. Do not edit!


(cl:in-package self_learning_communication-msg)


;//! \htmlinclude pose.msg.html

(cl:defclass <pose> (roslisp-msg-protocol:ros-message)
  ((camera_id
    :reader camera_id
    :initarg :camera_id
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32))
   (camera_timestamp
    :reader camera_timestamp
    :initarg :camera_timestamp
    :type std_msgs-msg:Time
    :initform (cl:make-instance 'std_msgs-msg:Time))
   (camera_pose
    :reader camera_pose
    :initarg :camera_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass pose (<pose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name self_learning_communication-msg:<pose> is deprecated: use self_learning_communication-msg:pose instead.")))

(cl:ensure-generic-function 'camera_id-val :lambda-list '(m))
(cl:defmethod camera_id-val ((m <pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_learning_communication-msg:camera_id-val is deprecated.  Use self_learning_communication-msg:camera_id instead.")
  (camera_id m))

(cl:ensure-generic-function 'camera_timestamp-val :lambda-list '(m))
(cl:defmethod camera_timestamp-val ((m <pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_learning_communication-msg:camera_timestamp-val is deprecated.  Use self_learning_communication-msg:camera_timestamp instead.")
  (camera_timestamp m))

(cl:ensure-generic-function 'camera_pose-val :lambda-list '(m))
(cl:defmethod camera_pose-val ((m <pose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_learning_communication-msg:camera_pose-val is deprecated.  Use self_learning_communication-msg:camera_pose instead.")
  (camera_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pose>) ostream)
  "Serializes a message object of type '<pose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_timestamp) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'camera_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pose>) istream)
  "Deserializes a message object of type '<pose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_timestamp) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'camera_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pose>)))
  "Returns string type for a message object of type '<pose>"
  "self_learning_communication/pose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pose)))
  "Returns string type for a message object of type 'pose"
  "self_learning_communication/pose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pose>)))
  "Returns md5sum for a message object of type '<pose>"
  "54e782714e2aeb791673a0a14332f140")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pose)))
  "Returns md5sum for a message object of type 'pose"
  "54e782714e2aeb791673a0a14332f140")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pose>)))
  "Returns full string definition for message of type '<pose>"
  (cl:format cl:nil "std_msgs/Int32 camera_id~%std_msgs/Time camera_timestamp~%geometry_msgs/Pose camera_pose~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Time~%time data~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pose)))
  "Returns full string definition for message of type 'pose"
  (cl:format cl:nil "std_msgs/Int32 camera_id~%std_msgs/Time camera_timestamp~%geometry_msgs/Pose camera_pose~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%================================================================================~%MSG: std_msgs/Time~%time data~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_timestamp))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'camera_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pose>))
  "Converts a ROS message object to a list"
  (cl:list 'pose
    (cl:cons ':camera_id (camera_id msg))
    (cl:cons ':camera_timestamp (camera_timestamp msg))
    (cl:cons ':camera_pose (camera_pose msg))
))
