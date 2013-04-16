;; Lazy procedures/thunks
(define lazy
  (lambda (exp)
    (lambda ()
      exp)))

;; Tests
;; (define state 0)
;; state
;; (set! state 1)
;; state
;; (define f (lazy (lambda () (display "hi\n") (set! state 2))))
;; f
;; state
;; ((f))
;; state
