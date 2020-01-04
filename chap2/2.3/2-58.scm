(load "./P100-Derivation-56-57.scm")


; 和表达式
(define (make-sum a1 a2) (cond ((=number? a1 0) a2)
                               ((=number? a2 0) a1)
                               ((and (number? a1) (number? a2)) (+ a1 a2))
                               (else (list a1 '+ a2))))
(define (addend s) (car s))                         ;; a)
(define (augend s)
    (let ((op-list (cddr s)))
        (if (single-operand? op-list)
            (car op-list)
            op-list)))                              ;; b)
(define (sum? x) (and (pair? x) (eq? (cadr x) '+))) ;; a)
; 乘积表达式
(define (make-product m1 m2) (cond  ((or (=number? m1 0) (=number? m2 0)) 0)
                                    ((=number? m1 1) m2)
                                    ((=number? m2 1) m1)
                                    ((and (number? m1) (number? m2)) (* m1 m2))
                                    (else (list m1 '* m2))))

(define (multiplier p) (car p))
(define (multiplicand p)
    (let ((op-list (cddr p)))
        (if (single-operand? op-list)
            (car op-list)
            op-list)))
(define (product? x) (and (pair? x) (eq? (cadr x) '*)))

(deriv '(x + 3 * (x + y + 2)) 'x)
(deriv '(x + 3) 'x)
(deriv '(x * y * (x + 3)) 'x)
(deriv '((x * y) * (x + 3)) 'x)
(deriv '(x * (y * (x + 3))) 'x)

(deriv '(x * y + y * z) 'x)
