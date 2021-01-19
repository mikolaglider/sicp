(define (pow x) (* x x))

(define (abs x)
    (if (< x 0) (- x) x))
 
; (define (abs x)
;     (cond ((> x 0) x)
;     ((= x 0) 0)
;     ((< x 0) (- x))))

(define (is-enough guess x)
    (< (abs (- (pow guess) x)) 0.001))

(define (avarage a b)
    (/ (+ a b) 2))

(define (improve guess x)
    (avarage guess (/ x guess)))

(define (sqrt-iter guess x)
    (if (is-enough guess x) guess
    (sqrt-iter (improve guess x) x)))

(define (sqrt x)
    (sqrt-iter 1.0 x))