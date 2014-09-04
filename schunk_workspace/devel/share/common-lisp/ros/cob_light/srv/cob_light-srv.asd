
(cl:in-package :asdf)

(defsystem "cob_light-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :cob_light-msg
)
  :components ((:file "_package")
    (:file "SetLightMode" :depends-on ("_package_SetLightMode"))
    (:file "_package_SetLightMode" :depends-on ("_package"))
  ))