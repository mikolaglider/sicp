#lang racket/base

(require rackunit)

;; BEGIN (write your solution here)
(define (fib n)
    (define (fib-iter a b count)
        (if (= count 0) b
            (fib-iter (+ a b) a (- count 1))))
    (fib-iter 1 0 n)
)
;; END

(check-equal? (fib 0) 0)
(check-equal? (fib 1) 1)
(check-equal? (fib 20) 6765)
(check-equal? (fib 30) 832040)
(check-equal? (fib 40) 102334155)