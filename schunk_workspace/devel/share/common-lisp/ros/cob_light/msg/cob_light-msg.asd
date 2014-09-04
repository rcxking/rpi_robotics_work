
(cl:in-package :asdf)

(defsystem "cob_light-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "LightMode" :depends-on ("_package_LightMode"))
    (:file "_package_LightMode" :depends-on ("_package"))
    (:file "SetLightModeFeedback" :depends-on ("_package_SetLightModeFeedback"))
    (:file "_package_SetLightModeFeedback" :depends-on ("_package"))
    (:file "SetLightModeActionFeedback" :depends-on ("_package_SetLightModeActionFeedback"))
    (:file "_package_SetLightModeActionFeedback" :depends-on ("_package"))
    (:file "SetLightModeGoal" :depends-on ("_package_SetLightModeGoal"))
    (:file "_package_SetLightModeGoal" :depends-on ("_package"))
    (:file "SetLightModeAction" :depends-on ("_package_SetLightModeAction"))
    (:file "_package_SetLightModeAction" :depends-on ("_package"))
    (:file "SetLightModeActionResult" :depends-on ("_package_SetLightModeActionResult"))
    (:file "_package_SetLightModeActionResult" :depends-on ("_package"))
    (:file "SetLightModeActionGoal" :depends-on ("_package_SetLightModeActionGoal"))
    (:file "_package_SetLightModeActionGoal" :depends-on ("_package"))
    (:file "SetLightModeResult" :depends-on ("_package_SetLightModeResult"))
    (:file "_package_SetLightModeResult" :depends-on ("_package"))
  ))