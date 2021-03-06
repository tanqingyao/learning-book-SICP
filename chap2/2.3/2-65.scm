(load "./2-62-order-list.scm")

(load "./2-64.scm")
(define (tree->list tree)
    (if (null? tree)
        '()
        (append (tree->list (left-branch tree))
                (cons (entry tree)
                      (tree->list (right-branch tree))))))
(define (union-set tree1 tree2)
    (let ((list1 (tree->list tree1))
          (list2 (tree->list tree2)))
        (list->tree (union-set list1 list2))))

(define (intersection-set tree1 tree2)
    (let ((list1 (tree->list tree1))
          (list2 (tree->list tree2)))
        (list->tree (intersection-set list1 list2))))