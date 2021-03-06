(define (fast-*-iter a b)
    (define (double x)
        (+ x x))
    (define (halve x)
            (/ x 2))
    (cond ((= b 1) a)
        ((even? b) (fast-*-iter (double a) (halve b)))
        (else (+ a (fast-*-iter a (- b 1))))))
(trace fast-*)
(fast-* 3 4)