
(cl:in-package :asdf)

(defsystem "cob_sound-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SayGoal" :depends-on ("_package_SayGoal"))
    (:file "_package_SayGoal" :depends-on ("_package"))
    (:file "SayActionFeedback" :depends-on ("_package_SayActionFeedback"))
    (:file "_package_SayActionFeedback" :depends-on ("_package"))
    (:file "SayResult" :depends-on ("_package_SayResult"))
    (:file "_package_SayResult" :depends-on ("_package"))
    (:file "SayAction" :depends-on ("_package_SayAction"))
    (:file "_package_SayAction" :depends-on ("_package"))
    (:file "SayActionGoal" :depends-on ("_package_SayActionGoal"))
    (:file "_package_SayActionGoal" :depends-on ("_package"))
    (:file "SayFeedback" :depends-on ("_package_SayFeedback"))
    (:file "_package_SayFeedback" :depends-on ("_package"))
    (:file "SayActionResult" :depends-on ("_package_SayActionResult"))
    (:file "_package_SayActionResult" :depends-on ("_package"))
  ))