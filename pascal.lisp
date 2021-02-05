#lang racket/base

; https://ru.wikipedia.org/wiki/%D0%A2%D1%80%D0%B5%D1%83%D0%B3%D0%BE%D0%BB%D1%8C%D0%BD%D0%B8%D0%BA_%D0%9F%D0%B0%D1%81%D0%BA%D0%B0%D0%BB%D1%8F

(require rackunit)

;; BEGIN (write your solution here)
(define (pascal-triangle x y)
    (cond 
        ((or (= x y) (= y 1)) 1)
        (else (+ (pascal-triangle (- x 1) (- y 1)) (pascal-triangle (- x 1) y)))
    )
)
;; END

(check-equal? (pascal-triangle 1 1) 1)
(check-equal? (pascal-triangle 2 2) 1)
(check-equal? (pascal-triangle 3 2) 2)
(check-equal? (pascal-triangle 4 2) 3)
(check-equal? (pascal-triangle 5 2) 4)
(check-equal? (pascal-triangle 5 3) 6)
(check-equal? (pascal-triangle 30 15) 77558760)