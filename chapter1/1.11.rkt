(require racket/include)
(include "../common.rkt")

; f(n) = n if n < 3
; f(n) = f(n-1) + 2f(n-2) + 3f(n-3) if n >= 3

; recursive procedure
(define (f n)
  (if (< n 3)
    n
    (+ (f (- n 1))
       (* 2 (f (- n 2)))
       (* 3 (f (- n 3))))))

; tests
(f 2) ;= 2
(f 3) ;= 4
(f 5) ;= 25

; iterative procedure
(define (f-iter n)
  (define (fi a b c count)
    (if (= count 0)
      c
      (fi (+ a (* 2 b) (* 3 c)) a b (- count 1))))
  (fi 2 1 0 n))

; tests
(f-iter 2) ;= 2
(f-iter 3) ;= 4
(f-iter 5) ;= 25
