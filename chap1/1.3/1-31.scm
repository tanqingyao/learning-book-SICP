(define (product term a next b)
    (if (> a b)
        1
        (* (term a)
            (product term (next a) next b))))
(define (product-iter term a next b)
    (define (iter a result)
        (if (> a b)
        result
        (iter (next a) (* (term a) result))))
    (iter a 1))

(define (factorial n)
    (product-iter (lambda (a) a) 1 (lambda (i) (+ 1 i)) n))
(factorial 4)

(define (pi iters)
    (define (up-term i)
        (if (odd? i)
            (+ 1 i)
            (+ 2 i)))
    (define (down-term i)
        (cond ((= 1 i) 3)
            ((odd? i) (+ 2 i))
            (else (+ 1 i))))
    (* 4
        (exact->inexact (/ (product up-term 1 (lambda (a) (+ 1 a)) iters)
            (product down-term 1 (lambda (a) (+ 1 a)) iters)))))
(pi 100)