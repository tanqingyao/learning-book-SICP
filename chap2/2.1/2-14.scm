(load "./2-12.scm")
(define (par1 r1 r2)
    (div-interval (mul-interval r1 r2) (add-interval r1 r2)))
(define (par2 r1 r2)
    (let ((one (make-interval 1 1)))
        (div-interval one
                      (add-interval (div-interval one r1)
                                    (div-interval one r2)))))
; 误差引起的不同
(define k (make-center-percent 6.8 0.5)) 
(define j (make-center-percent 4.7 0.5))
(display-interval (par1 k j))
(display-interval (par2 k j))