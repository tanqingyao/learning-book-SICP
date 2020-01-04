(load "./1-43-repeated.scm")
(define (smooth f)
    (lambda (x) (/ (+ (f (- x dx))
                      (f x)
                      (f (+ x dx))) 3)))
(define dx 0.001)
((smooth (lambda (x) (* x x))) 6)

(define (rpt-smooth f n)
    (repeated smooth n) f)

((rpt-smooth (lambda (x) (* x x)) 10) 6)
