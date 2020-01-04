(load "../1.2/1-21-prime.scm")
(load "../P32-gcd.scm")


(define (filtered-accumulate combiner null-value term a next b filter?)
    (define (comb-item x)
        (if (filter? x)
            (term x)
            null-value))
    (if (> a b)
        null-value
        (combiner (comb-item a)
            (filtered-accumulate combiner null-value term (next a) next b filter?))))

(define (primes-sum-range a b)
    (filtered-accumulate + 0 (lambda (i) i) a (lambda (i) (+ 1 i)) b prime?))
(primes-sum-range 1 10)

(define (primes-product-smaller n)
    (filtered-accumulate *
                         1 
                         (lambda (i) i) 
                         1 
                         (lambda (i) (+ 1 i)) 
                         n          ;(and (< i n) (= 1 gcd(i n)))
                         (lambda (i) (and (< i n) (= 1 (gcd i n))))))

(primes-product-smaller 10)