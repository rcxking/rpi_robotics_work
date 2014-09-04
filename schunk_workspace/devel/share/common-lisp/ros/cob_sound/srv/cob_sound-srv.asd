
(cl:in-package :asdf)

(defsystem "cob_sound-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SayText" :depends-on ("_package_SayText"))
    (:file "_package_SayText" :depends-on ("_package"))
  ))