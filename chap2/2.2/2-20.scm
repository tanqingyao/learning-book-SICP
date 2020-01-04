(define (same-parity first . rest)
    (define (iter v1 r result)
        (if (null? r)
            result
            (iter v1 (cdr r) (if (= (remainder (car r) 2) (remainder v1 2))
                                    (append result (list (car r)))
                                    result))))
    (iter first rest (list first)))
(same-parity 1 2 3 4 5 6 7 8 9)