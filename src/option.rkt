;; option: (some a) and (none)
(define some->sym car)
(define some->value cadr)

(define some?
  (lambda (s)
    (and (eq? (some->sym s) 'some)
         (option? (some->value s)))))

(define none->sym car)

(define none?
  (lambda (n)
    (eq? (none->sym n) 'none)))

(define option?
  (lambda (opt)
    (and (not (null? opt))
         (or (or (symbol? opt) ;(not (eq? 'none opt)) (not (eq? 'some) opt))
                 (number? opt)
                 (list? opt)
                 (string? opt))
             (some? opt)
             (none? opt))
         )))

(option? '(some (some 12)))
(option? '(some aa))
(option? '(some (1 2)))
(option? '(none))
(option? 'none) ;; should fail..
