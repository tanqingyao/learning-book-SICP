;;; 79-install-complex-package.scm
(load "./P124-install-rectangular-package.scm")
(load "./P124-install-polar-package.scm")

(load "./P129-install-rational-package.scm")
(load "./P129-install-scheme-number-package.scm")
(load "./P129-install-complex-package.scm")
(install-rectangular-package)
(install-polar-package)
(install-rational-package)
(install-scheme-number-package)
(install-complex-package)
(make-complex-from-real-imag 1 2)