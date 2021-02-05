#lang racket/base

; f(n) = n if n < 3, and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n >= 3.

(require rackunit)

;; BEGIN (write your solution here)
(define (f n)
    (cond
        ((< n 3) n)
        (else (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3)))))
        )
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