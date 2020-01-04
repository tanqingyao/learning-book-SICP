(load "./2-50.scm")
(define (beside painter1 painter2)
    (let ((split-point (make-vect 0.5 0.0)))
        (let ((paint-left
                (transform-painter painter1
                                   (make-vect 0.0 0.0)
                                   split-point
                                   (make-vect 0.0 1.0)))
              (paint-right
                (transform-painter painter2
                                   split-point
                                   (make-vect 1.0 0.0)
                                   (make-vect 0.5 1.0))))
            (lambda (frame)
                (paint-left frame)
                (paint-right frame)))))
; solution 1
(define (below painter1 painter2)
    (let ((split-point (make-vect 0.0 0.5)))
        (let ((paint-down
                (transform-painter painter1
                                   (make-vect 0.0 0.0)
                                   (make-vect 0.0 1.0)
                                   split-point))
              (paint-up
                (transform-painter painter2
                                   split-point
                                   (make-vect 0.5 1.0)
                                   (make-vect 1.0 0.5))))
            (lambda (frame)
                (paint-up frame)
                (paint-down frame)))))
; solution 2
(define (rotate-90 painter)
    (transform-painter painter
                       (make-vert 1.0 0.0)
                       (make-vert 1.0 1.0)
                       (make-vert 0.0 0.0)))
(define (below-comb painter1 painter2)
    (rotate90 (beside (rotate-270 painter1) (rotate-270 painter2))))