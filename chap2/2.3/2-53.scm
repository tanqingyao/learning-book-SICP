(list 'a 'b 'c)
(list (list 'george))
(cdr '((x1 x2)(y1 y2)))
(cadr '((x1 x2)(y1 y2)))
(pair? (cdr '(a short list a)))
(memq 'apple '(x (apple sauce) u apple pear))
(memq 'red '((red shoes) (blue socks)))
(memq 'red '(red shoes blue socks))
(eq? 1 1)
(define (make-product x . nums)
    (display x)
    (display nums))
(make-product 'a 'b)
