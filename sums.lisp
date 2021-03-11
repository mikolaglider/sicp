#lang racket/base

(require rackunit)

;; BEGIN (write your solution here)
(define (int-sum a b) 
    (if (> a b) 0 
        (+ a (int-sum (+ a 1) b))))

(define (cube-sum a b) 
    (if (> a b) 0
        (+ (* a a) (cube-sum (+ a 1) b))))

(define (pi-sum a b)
    (if (> a b) 0
        (+ (/ 1.0 (* a (+ a 2))) (pi-sum (+ a 4) b))
        ))

(define (sum term next a b)
    (if (> a b) 0
        (+ (term a) (sum term next (next a) b))))
;; END

(check-equal? (int-sum 2 1) 0)
(check-equal? (int-sum 1 1) 1)
(check-equal? (int-sum 1 2) 3)

(check-equal? (cube-sum 2 1) 0)
(check-equal? (cube-sum 1 1) 1)
(check-equal? (cube-sum 1 2) 5)

(check-equal? (pi-sum 2 1) 0)
(check-equal? (pi-sum 1 1) (/ 1.0 3))
(check-equal? (pi-sum 1 5) (+ (/ 1.0 3) (/ 1.0 (* 5 7))))