(load "./2-46-Vector.scm")
(define (make-frame origin edge1 edge2)
    (list origin edge1 edge2))
(define (origin-frame frame)
    (car frame))
(define (edge1-frame frame)
    (cadr frame))
(define (edge2-frame frame)
    (caddr frame))
(define (make-frame-2 origin edge1 edge2)
    (cons origin (cons edge1 edge2)))
(define (origin-frame-2 frame)
    (car frame))
(define (edge1-frame-2 frame)
    (cadr frame))
(define (edge2-frame-2 frame)
    (cddr frame))

; (define a-frame (make-frame-1 (make-vect 1 1) (make-vect 2 2) (make-vect 3 3)))
; a-frame
; (origin-frame-1 a-frame)
; (edge1-frame-1 a-frame)
; (edge2-frame-1 a-frame)