(load "./P106-tree.scm")
(define (element-of-set? x set)
    (cond ((null? set) #f)
        ((= x (entry set)) #t)
        ((< x (entry set)) (element-of-set? x (left-branch set)))
        ((> x (entry set)) (element-of-set? x (right-branch set)))))
(define a (make-tree 7
                           (make-tree 3
                                      (make-tree 1 '() '())
                                      (make-tree 5 '() '()))
                           (make-tree 9
                                      '()
                                      (make-tree 11 '() '()))))
(element-of-set? 7 a)
(element-of-set? 2 a)
(define (lookup given-key tree-of-records)
    (let ((entry-key (key (entry tree-of-records))))
        (cond   ((null? tree-of-records) #f)
                ((= given-key entry-key) #t)
                ((< given-key entry-key) (lookup given-key (left-branch tree-of-records)))
                ((> given-key entry-key) (lookup given-key (right-branch tree-of-records))))))