(define (make-rat n d)
    (define sign
    (if (or (and (> n 0) (> d 0))
            (and (< n 0) (< d 0)))
        1
        -1))
    (let ((g (gcd n d)))
        (cons (/ (* sign n) g) (/ (abs d) g))))
(define (numer x) (car x))
(define (denom x) (cdr x))

(define (print-rat x)
    (newline)
    (display (numer x))
    (display "/")
    (display (denom x)))

(print-rat (make-rat 6 -9))