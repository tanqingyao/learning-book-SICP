
(load "p34-fast-prime.scm")
(load "1-22.scm")
(define (prime? n)
    (fast-prime? n 10))

; (timed-prime-test 1000 3)
; (timed-prime-test 10000 3)
; (timed-prime-test 100000 3)
; (timed-prime-test 1000000 3)

(timed-prime-test 100000000 3)
(timed-prime-test 1000000000000 3)