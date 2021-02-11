#lang racket/base

(require rackunit)

;; BEGIN (write your solution here)
(define (exp a n)
    (define (exp-iter counter product)
        (if (= counter 0) product
        (exp-iter (- counter 1) (* a product)))
        )
    (exp-iter n 1)
)
;; END

(check-equal? (exp 2 0) 1)
(check-equal? (exp 2 1) 2)
(check-equal? (exp 2 2) 4)
(check-equal? (exp 2 3) 8)
(check-equal? (exp 2 4) 16)