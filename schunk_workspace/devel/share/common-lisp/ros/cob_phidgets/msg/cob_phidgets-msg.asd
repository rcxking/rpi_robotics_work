
(cl:in-package :asdf)

(defsystem "cob_phidgets-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DigitalSensor" :depends-on ("_package_DigitalSensor"))
    (:file "_package_DigitalSensor" :depends-on ("_package"))
    (:file "AnalogSensor" :depends-on ("_package_AnalogSensor"))
    (:file "_package_AnalogSensor" :depends-on ("_package"))
  ))