(load "./2-2.scm")
(define (make-rectange l-seg s-seg)
    (cons l-seg s-seg))
(define (long-rectange rect)
    (car rect))
(define (short-rectange rect)
    (cdr rect))

(define (length seg)
    (define (dist s-x s-y e-x e-y)
        (sqrt (+ (square (- s-x e-x)) (square (- s-y e-y)))))
    (let ((s (start-segment seg))
          (e (end-segment seg)))
        (dist (x-point s) (y-point s) (x-point e) (y-point e))))
; 应该建立中间一层抽象
(define (perimeter rect)
    (let ((l (long-rectange rect))
          (s (short-rectange rect)))

        (* 2 (+ (length l) (length s)))))
(define (area rect)
    (let ((l (long-rectange rect))
          (s (short-rectange rect)))

        (* (length l) (length s))))

(define zero (make-point 0 0))
(define row (make-point 0 3))
(define col (make-point 4 0))

(define short (make-segment row zero))
(define long (make-segment col zero))

(define rec (make-rectange long short))

(perimeter rec)
(area rec)
; 矩形中心和一条边定义
(define (other-make-rectange core seg)
    ; 定义对称点
    (define (Symmetric-point p)
        (make-point (- (* 2 (x-point core)) p) (- (* 2 (y-point core)) p)))
    (let ((s-seg (start-segment seg)))
        (cons seg (make-segment s-seg (Symmetric-point s-seg)))))
; (define (core-rectange rect)
;     (car rect))
; (define (seg-rectange rect)
;     (cdr rect))
; 矩形由两个交线定义
(define (another-make-rectange cross-one cross-two)
    (cons one two))
; (define (one-rectange rect)
;     (car rect))
; (define (two-rectange rect)
;     (cdr rect))