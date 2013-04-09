;; either: (left a) and (right a)
(define left->sym car)
(define left->value cadr)

(define right->sym car)
(define right->value cadr)

(define left?
  (lambda (exp)
    (and (eq? (left->sym exp) 'left)
         (or (symbol? (left->value exp))
             (string? (left->value exp))
             (number? (left->value exp))
             (either? (left->value exp))))))

(define right?
  (lambda (exp)
    (and (eq? (right->sym exp) 'right)
         (or (symbol? (right->value exp))
             (string? (right->value exp))
             (number? (right->value exp))
             (either? (right->value exp))))))

(define either?
  (lambda (exp)
    (and (not (null? exp))
         (or (left? exp)
             (right? exp)))))

(eq? (left->sym '(left 12)) 'left)
(eq? (left->value '(left 12)) 12)
(eq? (right->sym '(right 12)) 'right)
(eq? (right->value '(right 12)) 12)

(either? '(left 12))
(either? '(right 12))
