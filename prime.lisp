#lang racket/base

(require rackunit)

;; BEGIN (write your solution here)
(define (prime? n)
    (define (devides? a b)
        (= (remainder a b) 0)
    )
    (define (square a) (* a a))
    (define (find-devider n test)
        (cond 
            ((> (square test) n) n)
            ((devides? n test) test)
            (else (find-devider n (+ test 1)))
        )
    )
    (and (> n 1) (= (find-devider n 2) n))
)
;; END

(check-equal? (prime? 1) #f)
(check-equal? (prime? 2) #t)
(check-equal? (prime? 3) #t)
(check-equal? (prime? 4) #f)
(check-equal? (prime? 5) #t)
(check-equal? (prime? 7) #t)
(check-equal? (prime? 11) #t)
(check-equal? (prime? 13) #t)
(check-equal? (prime? 17) #t)
