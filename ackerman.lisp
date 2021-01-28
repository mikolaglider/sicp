#lang racket/base

(require rackunit)

;; BEGIN (write your solution here)
(define (A x y)
    (cond 
        ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else
          (A (- x 1) (A x (- y 1)))
         )
    )
)
;; END

(check-equal? (A 1 10) 1024)
(check-equal? (A 2 4) 65536)
(check-equal? (A 3 3) 65536)