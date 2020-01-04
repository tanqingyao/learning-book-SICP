(define (fringe tree)
    (cond   ((null? tree) '()) 
            ((not (pair? tree)) (list tree)) ;基础情况
            (else (append (fringe (car tree))
                          (fringe (cadr tree))))))
(define x (list (list 1 2) (list 3 4)))
(fringe x)
(fringe (list x x))