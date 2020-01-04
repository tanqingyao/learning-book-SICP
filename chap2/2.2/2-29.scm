; (define (make-mobile left right)
;     (list left right))
; (define (left-branch mobile)
;     (car mobile))
; (define (right-branch mobile)
;     (cadr mobile))

; (define (make-branch length structure)
;     (list length structure))
; (define (branch-length branch)
;     (car branch))
; (define (branch-structure branch)
;     (cadr branch))

(define (make-mobile left right)
    (cons left right))
(define (left-branch mobile)
    (car mobile))
(define (right-branch mobile)
    (cdr mobile))

(define (make-branch length structure)
    (cons length structure))
(define (branch-length branch)
    (car branch))
(define (branch-structure branch)
    (cdr branch))


(define (total-weight m)
    (cond ((not (pair? m)) 0)
          ((not (pair? (branch-structure m))) (branch-structure m))  ;分支结构为重量
          (else (+ (total-weight (left-branch m))                    ;另一个活动体
                   (total-weight (right-branch m))))))
(define (branch-torque branch)
    (* (branch-length branch) (total-weight branch)))

(define (balance? m)
    (let ((left (branch-structure (left-branch m)))
          (right (branch-structure (right-branch m))))
        (and (= (branch-torque (left-branch m))
                (branch-torque (right-branch m)))
            (if (pair? left)
                (balance? left)          ;分支上有另一个活动体
                #t)                      ;分支结构为长度和重量
            (if (pair? right)
                (balance? right)
                #t))))
; a)

; (define mobile (make-mobile (make-branch 10 25)
;                             (make-branch 5 20)))
; (left-branch mobile)
; (right-branch mobile)

; (branch-length (right-branch mobile))
; (branch-structure (right-branch mobile))

; b)

; (total-weight mobile)
; (define another-mobile (make-mobile (make-branch 10 mobile)   ; 左分支吊着另一个活动体，总重为 45
;                                     (make-branch 10 20)))     ; 右分支的重量是 20
; (total-weight another-mobile)

; c)

(define balance-mobile (make-mobile (make-branch 10 10)
                                    (make-branch 10 10)))

(define unbalance-mobile (make-mobile (make-branch 0 0)
                                        (make-branch 10 10)))
(define mobile-with-sub-mobile (make-mobile (make-branch 10 balance-mobile)
                                            (make-branch 10 balance-mobile)))
(balance? balance-mobile)
(balance? unbalance-mobile)
(balance? mobile-with-sub-mobile)

; d)
