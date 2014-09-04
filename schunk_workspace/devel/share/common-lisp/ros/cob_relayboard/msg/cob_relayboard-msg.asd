
(cl:in-package :asdf)

(defsystem "cob_relayboard-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "EmergencyStopState" :depends-on ("_package_EmergencyStopState"))
    (:file "_package_EmergencyStopState" :depends-on ("_package"))
  ))