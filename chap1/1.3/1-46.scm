(define (iterative-improve enough? improve)
    (define (iter guess)
        (let ((next (improve guess)))
            (if (enough? guess next)
                    next
                    (iter next))))
    (lambda (first-guess) (iter first-guess)))
; ((iterative-improve enough? improve) guess)

(define tolerance 0.00001)

(define (fixed-point f first-guess)
    ((iterative-improve (lambda (v1 v2) (< (abs (- v1 v2)) tolerance))
                        f
                        ) first-guess))
(define (sqrt x first-guess)
    (define (average a b)
        (/ (+ a b) 2))
    ((iterative-improve (lambda (v1 v2) (< (abs (- v1 v2)) tolerance))
                        (lambda (guess) (average guess (/ x guess)))
                        ) first-guess))
(fixed-point cos 1.0)
(sqrt 2 0.1)