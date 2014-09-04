
(cl:in-package :asdf)

(defsystem "cob_base_drive_chain-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ElmoRecorderReadout" :depends-on ("_package_ElmoRecorderReadout"))
    (:file "_package_ElmoRecorderReadout" :depends-on ("_package"))
    (:file "ElmoRecorderConfig" :depends-on ("_package_ElmoRecorderConfig"))
    (:file "_package_ElmoRecorderConfig" :depends-on ("_package"))
  ))