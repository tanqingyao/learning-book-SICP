(load "./1-37.scm")

(define (e k)
    (define (rmd-helper i)
        (remainder (+ i 1) 3))
    (+ 2 (cont-frac-iter (lambda (i)1.0)
                    (lambda (i) (if (= (rmd-helper i) 0)
                                    (* 2 (+ 1 (rmd-helper i)))
                                    1)) 
                    k)))
(e 100)