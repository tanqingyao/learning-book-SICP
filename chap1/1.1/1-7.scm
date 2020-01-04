(define (sqrt-iter guess x); modify in 1-7
    (if (good-enough? guess (improve guess x))
        guess
        (sqrt-iter (improve guess x) x)))
(define (improve guess x)
    (average guess (/ x guess)))
(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? guess next-guess); modify in 1-7
    (< (/ (abs (- guess next-guess)) guess) 0.001))
(define (sqrt x)
    (sqrt-iter 1.0 x))
(sqrt 1e-8)
(sqrt 1e8)