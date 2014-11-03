
(cl:in-package :asdf)

(defsystem "schunk_api-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PositionAPI" :depends-on ("_package_PositionAPI"))
    (:file "_package_PositionAPI" :depends-on ("_package"))
  ))