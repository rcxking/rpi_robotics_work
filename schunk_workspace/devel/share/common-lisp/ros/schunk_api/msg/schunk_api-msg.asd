
(cl:in-package :asdf)

(defsystem "schunk_api-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PositionJointSpace" :depends-on ("_package_PositionJointSpace"))
    (:file "_package_PositionJointSpace" :depends-on ("_package"))
    (:file "PositionCoordSpace" :depends-on ("_package_PositionCoordSpace"))
    (:file "_package_PositionCoordSpace" :depends-on ("_package"))
  ))