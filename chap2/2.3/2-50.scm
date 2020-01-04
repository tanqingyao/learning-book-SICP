; 水平翻折
(define (flip-horiz painter)
    (transform-painter painter
                       (make-vert 1 0)
                       (make-vert 0 0)
                       (make-vert 1 1)))
(define (rotate-180 painter)
    (transform-painter painter
                       (make-vert 1 1)
                       (make-vert 0 1)
                       (make-vert 1 0)))
(define (rotate-270 painter)
    (transform-painter painter
                       (make-vert 0 1)
                       (make-vert 0 0)
                       (make-vert 1 1)))