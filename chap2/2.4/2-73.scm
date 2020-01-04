(load "./P123-put-get.scm")
(load "./2-73-install-sum-package.scm")
(load "./2-73-install-product-package.scm")
(load "./2-73-install-exponent-package.scm")
(install-sum-pakage)
(install-product-pakage)
(install-exponent-pakage)
(define (deriv exp var)
    (cond ((number? exp) 0)
          ((variable? exp) (if (same-variable? exp var) 1 0))
          (else ((get 'deriv (operator exp)) (operands exp)
                                             var))))
(define (operator exp) (car exp))
(define (operands exp) (cdr exp))

(define (variable? x) (symbol? x))
(define (same-variable? v1 v2) (and (variable? v1) (variable? v2) (eq? v1 v2)))


(deriv '(+ x 3) 'x)
(deriv '(* x y) 'x)
(deriv '(** x 3) 'x)

; d)把构造表中put和get的参数type和op交换顺序