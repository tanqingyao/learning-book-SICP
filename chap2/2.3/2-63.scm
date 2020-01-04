(load "./P106-tree.scm")
; a) 结果一样
(define (tree->list-1 tree)
    (if (null? tree)
        '()
        (append (tree->list-1 (left-branch tree))
                (cons (entry tree)
                      (tree->list-1 (right-branch tree))))))
(define (tree->list-2 tree)
    (define (copy-to-list tree result-list)
        (if (null? tree)
            result-list
            (copy-to-list (left-branch tree)
                          (cons (entry tree)
                                (copy-to-list (right-branch tree) result-list)))))
    (copy-to-list tree '()))
(define a (make-tree 7
                           (make-tree 3
                                      (make-tree 1 '() '())
                                      (make-tree 5 '() '()))
                           (make-tree 9
                                      '()
                                      (make-tree 11 '() '()))))
(define b (make-tree 3
                           (make-tree 1 '() '())
                           (make-tree 7
                                      (make-tree 5 '() '())
                                      (make-tree 9
                                                 '()
                                                 (make-tree 11 '() '())))))
(define c (make-tree 5
                           (make-tree 3
                                      (make-tree 1 '() '())
                                      '())
                           (make-tree 9
                                      (make-tree 7 '() '())
                                      (make-tree 11 '() '()))))
(tree->list-1 a)
(tree->list-2 a)
(tree->list-1 b)
(tree->list-2 b)
(tree->list-1 c)
(tree->list-2 c)
; b) tree->list-1 计算过程二分左右子树，logN步，每次需进行append操作O(N/2).一共花O(NlogN)
;    tree->list-2 采用函数调用省去1中的append，有答案说为O(n),我感觉是O(logN),只考虑分治，cons看做常数操作时间
;但考虑第二个参数堆栈过程可能会花费O(n)，合并时仍然需要O(NlogN)