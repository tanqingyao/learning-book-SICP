; for complex driver
(load "./P124-install-rectangular-package.scm")
(load "./P124-install-polar-package.scm")

(load "./P129-install-rational-package.scm")
(load "./P129-install-scheme-number-package.scm")
(load "./P129-install-complex-package.scm")

(load "./P125-apply-generic.scm")

(install-rectangular-package)
(install-polar-package)

(install-rational-package)
(install-scheme-number-package)
(install-complex-package)

; 2-79
(define (equ? x y)
    (apply-generic 'equ? x y))
(equ? (make-scheme-number 3) (make-scheme-number 3))
(equ? (make-scheme-number 3) (make-scheme-number 30))

(equ? (make-rational 3 4) (make-rational 3 4))
(equ? (make-rational 3 4) (make-rational 3 40))

(equ? (make-complex-from-real-imag 1 2)
      (make-complex-from-real-imag 1 2))
(equ? (make-complex-from-real-imag 1 2)
      (make-complex-from-real-imag 3 2))

; 2-80
(define (=zero? x)
    (apply-generic '=zero? x))
(=zero? (make-scheme-number 0))
(=zero? (make-rational 3 4))
(=zero? (make-complex-from-real-imag 0 0))