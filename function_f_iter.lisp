#lang racket/base

; f(n) = n if n < 3, and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n >= 3.

(require rackunit)

;; BEGIN (write your solution here)
(define (f n)
    (define (f-iter a b c count)
        (if (= count 0) c
        (f-iter (+ a (* 2 b) (* 3 c)) a b (- count 1))))
    (f-iter 2 1 0 n)
    )
;; END

(check-equal? (f 1) 1)
(check-equal? (f 2) 2)
(check-equal? (f 3) 4)
(check-equal? (f 4) 11)
(check-equal? (f 5) 25)
(check-equal? (f 6) 59)
(check-equal? (f 7) 142)
(check-equal? (f 30) 61354575194)