(load "./P92-frame-coord-map.scm")
(define (segments->painter segment-list)
    (lambda (frame) (for-each (lambda (segment) (draw-line
                                                        ((frame-coord-map frame) (start-segment segment))
                                                        ((frame-coord-map frame) (end-segment segment))))
                              segment-list)))

; a)
(define top-left (make-vect 0.0 1.0))
(define top-right (make-vect 1.0 1.0))
(define bottom-left (make-vect 0.0 0.0))
(define bottom-right (make-vect 1.0 0.0))

(define top (make-segment top-left top-right))
(define left (make-segment top-left bottom-left))
(define right (make-segment top-right bottom-right))
(define bottom (make-segment bottom-left bottom-right))

(segments->painter (list top bottom left right))

; b)

(segments->painter (list (make-segment top-left bottom-right) (make-segment top-right bottom-left)))

; c)
(define top-mid (make-vect 0.5 1.0))
(define bottom-mid (make-vect 0.5 0.0))
(define left-mid (make-vect 0.0 0.5))
(define right-mid (make-vect 1.0 0.5))
(segments->painter (list (make-segment top-mid left-mid)
                         (make-segment top-mid right-mid)
                         (make-segment bottom-mid left-mid)
                         (make-segment bottom-mid right-mid)))
