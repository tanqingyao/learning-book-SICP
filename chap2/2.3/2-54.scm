(define (Myequal? a b)
    (cond ((and (pair? a) (pair? b)) (and (Myequal? (car a) (car b)) (Myequal? (cdr a) (cdr b))))
        ((and (not (pair? a)) (not (pair? b))) (eq? a b))
        (else #f)))

(equal? '(1 2 3 (4 5) 6) '(1 2 3 (4 5) 6)) 
(equal? '(1 2 3 (4 5) 6) '(1 2 3 (4 5 7) 6)) 