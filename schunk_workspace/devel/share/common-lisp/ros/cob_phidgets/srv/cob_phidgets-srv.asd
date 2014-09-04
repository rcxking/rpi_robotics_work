
(cl:in-package :asdf)

(defsystem "cob_phidgets-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetTriggerValue" :depends-on ("_package_SetTriggerValue"))
    (:file "_package_SetTriggerValue" :depends-on ("_package"))
    (:file "SetDataRate" :depends-on ("_package_SetDataRate"))
    (:file "_package_SetDataRate" :depends-on ("_package"))
    (:file "SetDigitalSensor" :depends-on ("_package_SetDigitalSensor"))
    (:file "_package_SetDigitalSensor" :depends-on ("_package"))
  ))