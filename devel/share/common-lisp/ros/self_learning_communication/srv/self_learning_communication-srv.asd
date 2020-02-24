
(cl:in-package :asdf)

(defsystem "self_learning_communication-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "secret_code" :depends-on ("_package_secret_code"))
    (:file "_package_secret_code" :depends-on ("_package"))
  ))