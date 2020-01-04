(define (deep-reverse items)
    (cond   ((null? items) '()) 
            ((not (pair? items)) items) ;基础情况
            (else (reverse (list (deep-reverse (car items))
                                 (deep-reverse (cadr items)))))))

(define (reverse items)
    (define (reverse-iter list result)
        (if (null? list)
            result
            (reverse-iter (cdr list) (cons (car list) result))))
    (reverse-iter items '()))
(define x (list (list 1 2) (list 3 4)))
(deep-reverse x)