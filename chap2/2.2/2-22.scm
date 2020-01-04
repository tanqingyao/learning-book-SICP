(define (square-list items)
    (define (iter things answer)
        (if (null? things)
            answer
            (iter (cdr things) (append answer (list (square (car things)))))))
    (iter items '()))

(square-list (list 1 2 3 4))