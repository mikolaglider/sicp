#lang racket/base

(require rackunit)

;; BEGIN (write your solution here)
(define (gcd a b)
    (if (= b 0) a
        (gcd b (remainder a b)))
)
;; END

(check-equal? (gcd 16 28) 4)
(check-equal? (gcd 206 40) 2)