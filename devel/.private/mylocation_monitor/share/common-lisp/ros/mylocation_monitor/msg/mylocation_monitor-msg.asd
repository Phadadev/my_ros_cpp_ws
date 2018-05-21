
(cl:in-package :asdf)

(defsystem "mylocation_monitor-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MyLandmarkDistance" :depends-on ("_package_MyLandmarkDistance"))
    (:file "_package_MyLandmarkDistance" :depends-on ("_package"))
  ))