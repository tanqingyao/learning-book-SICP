(define (d x)
    (display "*")
    )
(define zero (lambda (f) (lambda (x) x)))

(define (add-1 n)
    (lambda (f) (lambda (x) (f ((n f) x)))))

(define one (lambda (f) (lambda (x) (f x))))

(define two (lambda (f) (lambda (x) (f (f x)))))

(define (+ m n) (lambda (f) (lambda (x) ((m f) ((n f) x)))))

((zero d) 'a)
((one d) 'a)
((two d) 'a)
(((+ one two) d) 'a)