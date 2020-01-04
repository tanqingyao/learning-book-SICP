(load "./2-8.scm")
(define (mul-interval x y)
    (let ((p1 (* (lower-bound x) (lower-bound y)))
            (p2 (* (lower-bound x) (upper-bound y)))
            (p3 (* (upper-bound x) (lower-bound y)))
            (p4 (* (upper-bound x) (upper-bound y))))
        (make-interval (min p1 p2 p3 p4)
                        (max p1 p2 p3 p4))))

(define (div-interval x y)
    (if (and (< (lower-bound y) 0) (> (upper-bound y) 0))
        (display "The interval can't cross Number zero!")
        (mul-interval x
                    (make-interval (/ 1.0 (upper-bound y))
                                    (/ 1.0 (lower-bound y))))))

; (define i (make-interval 2 7)) 
;  (define j (make-interval -8 3)) 
  
;  (display-interval i) 
;  (display-interval j) 
;  (display-interval (div-interval i j)) 
;  (display-interval (mul-interval i j)) 