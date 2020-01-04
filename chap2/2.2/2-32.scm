(define (subsets s)
    (if (null? s)
        (list '())
        (let ((rest (subsets (cdr s)))) ;剩余的子集合
            (append rest (map (lambda (x) (cons (car s) x)) rest))))) ;剩余子集和car取得元素组成list

(subsets (list 1 2 3))