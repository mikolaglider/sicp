#lang racket/base

(require rackunit)

;; BEGIN (write your solution here)
(define (exp a n)
    (define (square b)
        (* b b))
    (define (exp-fast n)
        (cond ((= n 0) 1)
            ((even? n) (square (exp-fast (/ n 2))))
            (else (* a (exp-fast (- n 1))))
        )
    )
    (exp-fast n)
)
;; END

(check-equal? (exp 2 0) 1)
(check-equal? (exp 2 1) 2)
(check-equal? (exp 2 2) 4)
(check-equal? (exp 2 3) 8)
(check-equal? (exp 2 4) 16)