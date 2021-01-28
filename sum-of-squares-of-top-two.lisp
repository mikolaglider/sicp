#lang racket/base

(require rackunit)


(define (sum-of-squares-of-top-two a b c)
  (define (square a) (* a a))
  (define (sum-of-squares a b)
    (+ (square a) (square b))
  )
  (if (or (> a b) (> a c))
      (sum-of-squares a (max b c))
      (sum-of-squares b c)
      )
)

; (sum-of-squares-of-top-two 1 2 3)

(check-equal? (sum-of-squares-of-top-two 1 2 3) 13)
(check-equal? (sum-of-squares-of-top-two 3 4 2) 25)
(check-equal? (sum-of-squares-of-top-two 5 3 4) 41)
(check-equal? (sum-of-squares-of-top-two 1 1 2) 5)