
(cl:in-package :asdf)

(defsystem "self_learning_communication-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "motion_planningAction" :depends-on ("_package_motion_planningAction"))
    (:file "_package_motion_planningAction" :depends-on ("_package"))
    (:file "motion_planningActionFeedback" :depends-on ("_package_motion_planningActionFeedback"))
    (:file "_package_motion_planningActionFeedback" :depends-on ("_package"))
    (:file "motion_planningActionGoal" :depends-on ("_package_motion_planningActionGoal"))
    (:file "_package_motion_planningActionGoal" :depends-on ("_package"))
    (:file "motion_planningActionResult" :depends-on ("_package_motion_planningActionResult"))
    (:file "_package_motion_planningActionResult" :depends-on ("_package"))
    (:file "motion_planningFeedback" :depends-on ("_package_motion_planningFeedback"))
    (:file "_package_motion_planningFeedback" :depends-on ("_package"))
    (:file "motion_planningGoal" :depends-on ("_package_motion_planningGoal"))
    (:file "_package_motion_planningGoal" :depends-on ("_package"))
    (:file "motion_planningResult" :depends-on ("_package_motion_planningResult"))
    (:file "_package_motion_planningResult" :depends-on ("_package"))
    (:file "person" :depends-on ("_package_person"))
    (:file "_package_person" :depends-on ("_package"))
    (:file "pose" :depends-on ("_package_pose"))
    (:file "_package_pose" :depends-on ("_package"))
  ))