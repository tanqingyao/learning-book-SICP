(load "./P123-put-get.scm")
(load "./P119-tag.scm")
(load "./P102-number?.scm")
(define (install-exponent-pakage)
    ;;internal procedures
    (define (make-exponentiation base exponent) (cond ((= exponent 0) 1)
                                                    ((= exponent 1) base)
                                                    (else (attach-tag '** base exponent))))
    (define (base e) (car e))
    (define (exponent e) (cadr e))
    ;;interface to the rest of the system
    (put 'make-exponentiation '** make-exponentiation)
    (put 'base '** base)
    (put 'exponent '** exponent)
    (put 'deriv '**
                (lambda (exp var) (let ((u (base exp))
                                         (n (exponent exp)))
                                        (make-product n
                                                (make-product  (make-exponentiation u (- n 1))
                                                               (deriv u var))))))
    )
(define (make-exponentiation x y)
    ((get 'make-exponentiation '**) x y))

(define (base e)
    ((get 'base '**) (contents e)))

(define (exponent e)
    ((get 'exponent '**) (contents e)))