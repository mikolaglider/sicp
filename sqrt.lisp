(define (mySqrt x)
    (define (pow a) (* a a))

    (define (abs a)
        (if (< a 0) (- a) a))

    (define (avarage a b)
        (/ (+ a b) 2))

    (define (is-enough guess)
        (< (abs (- (pow guess) x)) 0.001))
    
    (define (improve guess)
        (avarage guess (/ x guess)))

    (define (sqrt-iter guess)
        (if (is-enough guess) guess
        (sqrt-iter (improve guess))))

    (sqrt-iter 1.0))