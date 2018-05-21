;; Auto-generated. Do not edit!


(when (boundp 'mylocation_monitor::MyLandmarkDistance)
  (if (not (find-package "MYLOCATION_MONITOR"))
    (make-package "MYLOCATION_MONITOR"))
  (shadow 'MyLandmarkDistance (find-package "MYLOCATION_MONITOR")))
(unless (find-package "MYLOCATION_MONITOR::MYLANDMARKDISTANCE")
  (make-package "MYLOCATION_MONITOR::MYLANDMARKDISTANCE"))

(in-package "ROS")
;;//! \htmlinclude MyLandmarkDistance.msg.html


(defclass mylocation_monitor::MyLandmarkDistance
  :super ros::object
  :slots (_name _distance ))

(defmethod mylocation_monitor::MyLandmarkDistance
  (:init
   (&key
    ((:name __name) "")
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _distance (float __distance))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64 _distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mylocation_monitor::MyLandmarkDistance :md5sum-) "e2f8ddf8c9e39a28149179429f5ae342")
(setf (get mylocation_monitor::MyLandmarkDistance :datatype-) "mylocation_monitor/MyLandmarkDistance")
(setf (get mylocation_monitor::MyLandmarkDistance :definition-)
      "string name #Name of the landmark
float64 distance #Distance to the landmark, in meters.
")



(provide :mylocation_monitor/MyLandmarkDistance "e2f8ddf8c9e39a28149179429f5ae342")


