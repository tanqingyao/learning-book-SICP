(load "./P78-enumerate-interval.scm")
(load "./P83-flatmap.scm")
(define (queens board-size)
    (define (queen-cols k)
        (if (= k 0)
            (list empty-board)
            (filter (lambda (positions) (safe? k positions))
                    (flatmap (lambda (rest-of-queens)
                                     (map (lambda (new-row)
                                                  (adjoin-position new-row k rest-of-queens))
                                          (enumerate-interval 1 board-size)))
                             (queen-cols (- k 1))))))
    (queen-cols board-size))
; 棋盘格局皇后位置[i, j]，行: list[i]，列： i
; (list 3 7 2 8 5 1 4 6)
(define (adjoin-position new-row k rest-of-queens)
    (append rest-of-queens (list new-row)))
(define empty-board '())
(define (safe? k positions)
    (define (end-item k positions)
        (if (> k 1)
            (end-item (- k 1) (cdr positions))
            (car positions)))
    (define (iter-safe check-pos check-num rest-pos)
        (if (= check-pos 0)
            #t
            (cond ((= check-num (car rest-pos)) #f)       ;行相同
                  ((= (+ check-num check-pos) (car rest-pos)) #f) ;下对角线
                  ((= (- check-num check-pos) (car rest-pos)) #f) ;上对角线
                  (else (iter-safe (- check-pos 1) check-num (cdr rest-pos))))))
    (let (
        (new-num (end-item k positions))
            )
        (iter-safe (- k 1) new-num positions)))


(append (list 1 2 3) (list 4))
(define (added-item k positions)
    (if (> k 1)
        (added-item (- k 1) (cdr positions))
        (car positions)))
(added-item 5 (list 3 4 2 8 2))
(safe? 5 (list 3 4 2 8 5))
(for-each (lambda (pos)
                    (begin
                        (display pos)
                        (newline)))
                (queens 8))
; exercise 2.43
; (flatmap (lambda (new-row)
;                 (map (lambda (rest-of-queens)
;                             (adjoin-position new-row k rest-of-queens))
;                     (queen-cols (- k 1))))
;         (enumerate-interval 1 board-size))