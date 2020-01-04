(define (reverse items)
    (define (reverse-iter list result)
        (if (null? list)
            result
            (reverse-iter (cdr list) (cons (car list) result))))
    (reverse-iter items '()))

; (reverse (list 1 4 9 16 25))
