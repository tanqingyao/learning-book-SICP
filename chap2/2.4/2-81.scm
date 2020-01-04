; for complex driver
(load "./P124-install-rectangular-package.scm")
(load "./P124-install-polar-package.scm")

(load "./P129-install-rational-package.scm")
(load "./P129-install-scheme-number-package.scm")
(load "./P129-install-complex-package.scm")

(load "./P134-apply-generic.scm")

(install-rectangular-package)
(install-polar-package)

(install-rational-package)
(install-scheme-number-package)
(install-complex-package)


(define (exp x y) (apply-generic 'exp x y))

(exp (make-scheme-number 3) (make-scheme-number 3))
(trace apply-generic)

(exp (make-complex-from-real-imag 1 2)
     (make-complex-from-real-imag 1 2))