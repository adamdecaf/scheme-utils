;; List utils

;; Create a list of size _size_
(define fill
  (lambda (size)
    (if (zero? size)
        '()
        (cons size (fill (- size 1))))))
