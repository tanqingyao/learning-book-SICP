(load "p34-expmod.scm")

(define (Carmichael? n)
    (define (try-it a)
        (= (expmod a n n) a))
    (if (try-it (- n 1))
        (try-it (dec (- n 1)))
        (display "Not Carmichael number")))
(define (dec n)
    (- n 1))
(Carmichael? 6601)