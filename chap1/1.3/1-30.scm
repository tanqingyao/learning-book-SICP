(define (sum-iter term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (+ result (term a)))))
    (iter a 0))
(sum-iter (lambda (x) x) 1 (lambda (i) (+ 1 i)) 10)