(define z (list 1 (list 2 (list 3 (list 4 (list 5 (list 6 7)))))))

(cadadr (cadadr (cadadr z)))

(define x (list 1 2 3))
(define y (list 4 5 6))
(append x y)
(cons x y)
(list x y)