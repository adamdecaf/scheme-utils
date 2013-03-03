;; floating point utils

(define epsilon 0.001)

;; feq?
(define feq?
  (lambda (epsilon)
    (lambda (a b)
      (<= (abs (- a b)) epsilon))))
