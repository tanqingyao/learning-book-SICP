(load "./2-7.scm")
(define (add-interval x y)
    (make-interval (+ (lower-bound x) (lower-bound y))
                    (+ (upper-bound x) (upper-bound y))))
(define (sub-interval x y)
    (make-interval (- (upper-bound x) (lower-bound y))
                    (- (lower-bound x) (upper-bound y))))

;  (define i (make-interval 2 7)) 
;  (define j (make-interval 8 3)) 
  
;  (display-interval i) 
;  (display-interval (sub-interval i j)) 
;  (display-interval (sub-interval j i)) 