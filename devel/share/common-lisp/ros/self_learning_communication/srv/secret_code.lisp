; Auto-generated. Do not edit!


(cl:in-package self_learning_communication-srv)


;//! \htmlinclude secret_code-request.msg.html

(cl:defclass <secret_code-request> (roslisp-msg-protocol:ros-message)
  ((secret_code_front
    :reader secret_code_front
    :initarg :secret_code_front
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass secret_code-request (<secret_code-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <secret_code-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'secret_code-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name self_learning_communication-srv:<secret_code-request> is deprecated: use self_learning_communication-srv:secret_code-request instead.")))

(cl:ensure-generic-function 'secret_code_front-val :lambda-list '(m))
(cl:defmethod secret_code_front-val ((m <secret_code-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_learning_communication-srv:secret_code_front-val is deprecated.  Use self_learning_communication-srv:secret_code_front instead.")
  (secret_code_front m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <secret_code-request>) ostream)
  "Serializes a message object of type '<secret_code-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'secret_code_front) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <secret_code-request>) istream)
  "Deserializes a message object of type '<secret_code-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'secret_code_front) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<secret_code-request>)))
  "Returns string type for a service object of type '<secret_code-request>"
  "self_learning_communication/secret_codeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'secret_code-request)))
  "Returns string type for a service object of type 'secret_code-request"
  "self_learning_communication/secret_codeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<secret_code-request>)))
  "Returns md5sum for a message object of type '<secret_code-request>"
  "4808b418c9da88e8e5bd0ad4c2770375")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'secret_code-request)))
  "Returns md5sum for a message object of type 'secret_code-request"
  "4808b418c9da88e8e5bd0ad4c2770375")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<secret_code-request>)))
  "Returns full string definition for message of type '<secret_code-request>"
  (cl:format cl:nil "std_msgs/String secret_code_front~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'secret_code-request)))
  "Returns full string definition for message of type 'secret_code-request"
  (cl:format cl:nil "std_msgs/String secret_code_front~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <secret_code-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'secret_code_front))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <secret_code-request>))
  "Converts a ROS message object to a list"
  (cl:list 'secret_code-request
    (cl:cons ':secret_code_front (secret_code_front msg))
))
;//! \htmlinclude secret_code-response.msg.html

(cl:defclass <secret_code-response> (roslisp-msg-protocol:ros-message)
  ((secret_code_next
    :reader secret_code_next
    :initarg :secret_code_next
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass secret_code-response (<secret_code-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <secret_code-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'secret_code-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name self_learning_communication-srv:<secret_code-response> is deprecated: use self_learning_communication-srv:secret_code-response instead.")))

(cl:ensure-generic-function 'secret_code_next-val :lambda-list '(m))
(cl:defmethod secret_code_next-val ((m <secret_code-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader self_learning_communication-srv:secret_code_next-val is deprecated.  Use self_learning_communication-srv:secret_code_next instead.")
  (secret_code_next m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <secret_code-response>) ostream)
  "Serializes a message object of type '<secret_code-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'secret_code_next) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <secret_code-response>) istream)
  "Deserializes a message object of type '<secret_code-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'secret_code_next) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<secret_code-response>)))
  "Returns string type for a service object of type '<secret_code-response>"
  "self_learning_communication/secret_codeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'secret_code-response)))
  "Returns string type for a service object of type 'secret_code-response"
  "self_learning_communication/secret_codeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<secret_code-response>)))
  "Returns md5sum for a message object of type '<secret_code-response>"
  "4808b418c9da88e8e5bd0ad4c2770375")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'secret_code-response)))
  "Returns md5sum for a message object of type 'secret_code-response"
  "4808b418c9da88e8e5bd0ad4c2770375")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<secret_code-response>)))
  "Returns full string definition for message of type '<secret_code-response>"
  (cl:format cl:nil "std_msgs/String secret_code_next~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'secret_code-response)))
  "Returns full string definition for message of type 'secret_code-response"
  (cl:format cl:nil "std_msgs/String secret_code_next~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <secret_code-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'secret_code_next))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <secret_code-response>))
  "Converts a ROS message object to a list"
  (cl:list 'secret_code-response
    (cl:cons ':secret_code_next (secret_code_next msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'secret_code)))
  'secret_code-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'secret_code)))
  'secret_code-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'secret_code)))
  "Returns string type for a service object of type '<secret_code>"
  "self_learning_communication/secret_code")