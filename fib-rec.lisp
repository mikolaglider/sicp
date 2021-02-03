#lang racket/base

(require rackunit)

;; BEGIN (write your solution here)
(define (fib n)
    (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib(- n 1)) (fib(- n 2))))
        )
)
;; END

(check-equal? (fib 0) 0)
(check-equal? (fib 1) 1)
(check-equal? (fib 20) 6765)
(check-equal? (fib 30) 832040)
(check-equal? (fib 40) 102334155)