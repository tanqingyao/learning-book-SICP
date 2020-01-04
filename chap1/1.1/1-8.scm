(define (cube-iter guess x)             ; modify in 1-7
    (if (good-enough? guess (improve guess x))
        guess
        (cube-iter (improve guess x) x)))
(define (improve guess x)               ; modify in 1-8
    (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (good-enough? guess next-guess) ; modify in 1-7
    (< (/ (abs (- guess next-guess)) guess) 0.001))
(define (cube x)
    (cube-iter 1.0 x))
(cube 1e9)