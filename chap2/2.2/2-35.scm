(load "./accumulate.scm")
(define (count-leaves tree)
    (accumulate + 0 (map (lambda (sub-tree) (if (pair? sub-tree)
                                                (count-leaves sub-tree)
                                                1))
                         tree)))

(count-leaves (list (list 1 2) (list 3 4)))