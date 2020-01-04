(load "./accumulate.scm")
(load "./P78-enumerate-interval.scm")
(load "../../chap1/1.2/1-21-prime.scm")
(define (flatmap proc seq)
    (accumulate append '() (map proc seq)))
(define (prime-sum? pair)
    (prime? (+ (car pair) (cadr pair))))
(define (make-pair-sum pair)
    (list (car pair) (cadr pair) (+ (car pair) (cadr pair))))
(define (prime-sum-pairs n)
    (map make-pair-sum
         (filter prime-sum?
                 (flatmap (lambda (i) (map (lambda (j) (list i j))
                                           (enumerate-interval 1 (- i 1))))
                          (enumerate-interval 1 n)))))
(prime-sum-pairs 6)

; exercise 2.40

(define (unique-pairs n)
    (flatmap (lambda (i) (map (lambda (j) (list i j))
                            (enumerate-interval 1 (- i 1))))
            (enumerate-interval 1 n)))

(define (simple-prime-sum-pairs n)
    (map make-pair-sum
         (filter prime-sum?
                 (unique-pairs n))))
(unique-pairs 6)
(simple-prime-sum-pairs 6)