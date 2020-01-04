(define (make-segement start end) (cons start end))
(define (start-segement seg) (car seg))
(define (end-segement seg) (cdr seg))