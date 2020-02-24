; Auto-generated. Do not edit!


(cl:in-package self_learning_communication-msg)


;//! \htmlinclude person.msg.html

(cl:defclass <person> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (age
    :reader age
    :initarg :age
    :type std_msgs-msg:Int8
    :initform (cl:make-instance 'std_msgs-msg:Int8))
   (sex
    :reader sex
    :initarg :sex
    :type std_msgs-msg:Int8
    :initform (cl:make-instance 'std_msgs-msg:Int8)))
)

(cl:defclass person (<person>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <person>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'person)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name self_learning_communication-msg:<person> is deprecated: use self_learning_communication-msg:person instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_learning_communication-msg:name-val is deprecated.  Use self_learning_communication-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_learning_communication-msg:age-val is deprecated.  Use self_learning_communication-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'sex-val :lambda-list '(m))
(cl:defmethod sex-val ((m <person>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_learning_communication-msg:sex-val is deprecated.  Use self_learning_communication-msg:sex instead.")
  (sex m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <person>) ostream)
  "Serializes a message object of type '<person>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'name) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'age) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sex) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <person>) istream)
  "Deserializes a message object of type '<person>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'name) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'age) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sex) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<person>)))
  "Returns string type for a message object of type '<person>"
  "self_learning_communication/person")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'person)))
  "Returns string type for a message object of type 'person"
  "self_learning_communication/person")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<person>)))
  "Returns md5sum for a message object of type '<person>"
  "04c7bee12efe24fd3e4de6b8844645fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'person)))
  "Returns md5sum for a message object of type 'person"
  "04c7bee12efe24fd3e4de6b8844645fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<person>)))
  "Returns full string definition for message of type '<person>"
  (cl:format cl:nil "std_msgs/String name~%std_msgs/Int8 age~%std_msgs/Int8 sex~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Int8~%int8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'person)))
  "Returns full string definition for message of type 'person"
  (cl:format cl:nil "std_msgs/String name~%std_msgs/Int8 age~%std_msgs/Int8 sex~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Int8~%int8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <person>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'age))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sex))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <person>))
  "Converts a ROS message object to a list"
  (cl:list 'person
    (cl:cons ':name (name msg))
    (cl:cons ':age (age msg))
    (cl:cons ':sex (sex msg))
))
