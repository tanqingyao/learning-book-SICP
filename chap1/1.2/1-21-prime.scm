(define (samllest-divisor n)
    (find-divisor n 2))
(define (find-divisor n test-divisor)
    (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))
(define (divides? a b)
    (= (remainder b a) 0))
(define (prime? n)
    (= n (samllest-divisor n)))
; (prime? 4)
; (prime? 7)
; (samllest-divisor 199)
; (samllest-divisor 1999)
; (samllest-divisor 19999)