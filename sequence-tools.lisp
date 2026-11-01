;;; sequence-tools.lisp
;;; 31-Oct-2026 SVS
;;; Routines to treat sequences more generically

(in-package :sequence-tools)

;;; Mapping over sequences generically. Since this is impossible
;;;   with (loop ... collect ...)

(defmethod map-seq (fn (seq sequence) &rest other-sequences)
  (apply #'map (type-of seq) fn seq other-sequences))

(defmethod mapc-seq (fn (seq sequence) &rest other-sequences)
  (apply #'map nil fn seq other-sequences))