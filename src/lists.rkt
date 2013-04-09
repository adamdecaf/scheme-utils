;; List utils

;; Create a list of size _size_
(define fill
  (lambda (size)
    (if (zero? size)
        '()
        (cons size (fill (- size 1))))))

        ;; partition
(define partition
  (lambda (f lst)
    (partition-helper f lst '() '())))

(define partition-helper
  (lambda (f lst succ fail)
    (cond ((null? lst) (list succ fail))
          ((true? (f (car lst)))
           (partition-helper f (cdr lst) (cons (car lst) succ) fail))
          ((false? (f (car lst)))
           (partition-helper f (cdr lst) succ (cons (car lst) fail))))))

(partition even? '(1 2 3 4))
(partition odd? '(1 2 3 4))
