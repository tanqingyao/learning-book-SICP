(load "./2-11.scm")
; p为小数
(define (make-center-percent c p)
    (make-interval (* c (/ (- 100 p) 100)) (* c (/ (+ 100 p) 100))))
(define (center i)
    (let (  (a (lower-bound i))
            (b (upper-bound i)))
        (/ (+ a b) 2)))
(define (percent i)
    (let (  (a (lower-bound i))
            (b (upper-bound i)))
        (/ (- b a) (+ a b))))

(define i (make-center-percent 3.5 (/ 15 3.5))) 
  
(display-interval i)
; 乘法过后的百分误差，数学公式，两个很小的误差相乘可以忽略
 (define k (make-center-percent 10 0.5)) 
 (define j (make-center-percent 10 0.4)) 
 (display-interval (mul-interval k j))
 (percent (mul-interval k j)) 