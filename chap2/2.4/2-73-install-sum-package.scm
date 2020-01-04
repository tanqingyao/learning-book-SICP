(load "./P102-number?.scm")
(load "./P119-tag.scm")
(load "./P123-put-get.scm")
(define (install-sum-pakage)
    ;;internal procedures
    (define (make-sum a1 a2) (cond ((=number? a1 0) a2)
                                ((=number? a2 0) a1)
                                ((and (number? a1) (number? a2)) (+ a1 a2))
                                (else (attach-tag '+ a1 a2))))
    (define (addend s) (car s))
    (define (augend s) (cadr s))
    ;;interface to the rest of the system
    (put 'make-sum '+ make-sum)
    (put 'addend '+ addend)
    (put 'augend '+ augend)
    (put 'deriv '+
                (lambda (exp var) (make-sum (deriv (addend exp) var)
                                            (deriv (augend exp) var))))
    
    )
(define (make-sum x y)
    ((get 'make-sum '+) x y))

(define (addend sum)
    ((get 'addend '+) (contents sum)))

(define (augend sum)
    ((get 'augend '+) (contents sum)))