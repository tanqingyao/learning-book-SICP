(load "./1-37.scm")

(define (tan-cf x k)
    (exact->inexact(cont-frac-iter (lambda (i) (if (= i 1)
                                        x
                                        (- (square x))))
                    (lambda (i) (- (* 2 i) 1))
                    k)))
(tan 10)
(tan-cf 10 100)