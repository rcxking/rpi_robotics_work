
(cl:in-package :asdf)

(defsystem "schunk_api-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PositionAPIJointSpace" :depends-on ("_package_PositionAPIJointSpace"))
    (:file "_package_PositionAPIJointSpace" :depends-on ("_package"))
    (:file "PositionAPICoordSpace" :depends-on ("_package_PositionAPICoordSpace"))
    (:file "_package_PositionAPICoordSpace" :depends-on ("_package"))
    (:file "InitHaltAPI" :depends-on ("_package_InitHaltAPI"))
    (:file "_package_InitHaltAPI" :depends-on ("_package"))
    (:file "JointDataAPIPowerball" :depends-on ("_package_JointDataAPIPowerball"))
    (:file "_package_JointDataAPIPowerball" :depends-on ("_package"))
  ))