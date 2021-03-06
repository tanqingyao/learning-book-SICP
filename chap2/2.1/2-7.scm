(define (make-interval a b)
    (cons a b))
(define (lower-bound i)
    (min (car i) (cdr i)))
(define (upper-bound i)
    (max (car i) (cdr i)))

(define (display-interval i) 
   (newline) 
   (display "[") 
   (display (lower-bound i)) 
   (display ",") 
   (display (upper-bound i)) 
   (display "]")) 