(load "./2-10.scm")
(define (mul-interval-rebuild x y)
    
    (let (  (l-x (lower-bound x))
            (u-x (upper-bound x))
            (l-y (lower-bound y))
            (u-y (upper-bound y))
            ; (x-pos (and (> (lower-bound x) 0) (> (upper-bound x) 0)))
            ; (x-zero (and (> (lower-bound x) 0) (< (upper-bound x) 0)))
            ; (x-neg (and (< (lower-bound x) 0) (< (upper-bound x) 0)))
            ; (y-pos (and (> (lower-bound y) 0) (> (upper-bound y) 0)))
            ; (x-zero (and (> (lower-bound y) 0) (< (upper-bound y) 0)))
            ; (y-neg (and (< (lower-bound y) 0) (< (upper-bound y) 0)))
            )
        (cond ;   （正，正）（正，0）（正，负）
              ((and (> l-x 0) (> u-x 0) (> l-y 0) (> u-y 0)) (make-interval (* l-x l-y) (* u-x u-y)))
              ((and (> l-x 0) (> u-x 0) (< l-y 0) (> u-y 0)) (make-interval (* u-x l-y) (* u-x u-y)))
              ((and (> l-x 0) (> u-x 0) (< l-y 0) (< u-y 0)) (make-interval (* l-x l-y) (* u-x u-y)))
            ;   （0，正）（0，0）（0，负）
              ((and (< l-x 0) (> u-x 0) (> l-y 0) (> u-y 0)) (make-interval (* l-x u-y) (* u-x u-y)))
              ((and (< l-x 0) (> u-x 0) (< l-y 0) (> u-y 0)) (make-interval (max (* l-x l-y) (* u-x u-y) (min (* l-x u-y) (* l-x u-y))))
              ((and (< l-x 0) (> u-x 0) (< l-y 0) (< u-y 0)) (make-interval (* l-x l-y) (* u-x l-y)))                     
            ;   （负，正）（负，0）（负，负）
              ((and (< l-x 0) (< u-x 0) (> l-y 0) (> u-y 0)) (make-interval (* l-x l-y) (* u-x u-y)))            
              ((and (< l-x 0) (< u-x 0) (< l-y 0) (> u-y 0)) (make-interval (* l-x l-y) (* l-x u-y)))
              ((and (< l-x 0) (< u-x 0) (< l-y 0) (< u-y 0)) (make-interval (* l-x l-y) (* u-x u-y)))
              
              ))))

; (define i (make-interval 2 7)) 
; (define j (make-interval 8 3)) 
  
; (display-interval i) 
; (display-interval j) 
; (display-interval (mul-interval i j)) 
; (display-interval (mul-interval-rebuild i j)) 