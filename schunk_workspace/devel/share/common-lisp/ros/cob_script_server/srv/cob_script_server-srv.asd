
(cl:in-package :asdf)

(defsystem "cob_script_server-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :trajectory_msgs-msg
)
  :components ((:file "_package")
    (:file "ComposeTrajectory" :depends-on ("_package_ComposeTrajectory"))
    (:file "_package_ComposeTrajectory" :depends-on ("_package"))
  ))