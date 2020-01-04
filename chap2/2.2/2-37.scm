(load "./2-36-accumulate-n.scm")

(define (dot-product v w)
    (accumulate + 0 (map * v w)))
(define (matrix-*-vector m v)
    (map (lambda (row) (dot-product row v)) m))
(define (transpose mat)
    (accumulate-n (lambda (x y) (cons x y)) '() mat))
(define (matrix-*-matrix m n)
    (let ((cols (transpose n)))
        (map (lambda (row) (matrix-*-vector cols row)) m)))

(define x (list (list 1 2 3 4) (list 4 5 6 6 ) (list 6 7 8 9)))
(matrix-*-vector x (list 1 2 3 4))

(matrix-*-matrix x (transpose x))