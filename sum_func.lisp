#lang racket/base

(require rackunit)

;; BEGIN (write your solution here)
(define (sum term next a b)
    (if (> a b) 0
        (+ (term a) (sum term next (next a) b))))

(define (int-sum a b) 
  (sum (lambda (x) x) (lambda (x) (+ x 1)) a b))

(define (cube-sum a b) 
  (sum (lambda (x) (* x x)) (lambda (x) (+ x 1)) a b))

(define (pi-sum a b)
    (sum (lambda (x) (/ 1.0 (* x (+ x 2)))) (lambda (x) (+ x 4)) a b))
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