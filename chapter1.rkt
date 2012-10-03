#lang racket

; non-exercise helpers
(define (square x) (* x x))

; Exercises

; 1.1
10
;= 10
(+ 5 3 4)
;= 12
(- 9 1)
;= 8
(/ 6 2)
;= 3
(+ (* 2 4) (- 4 6))
;= 6
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
;= 19
(= a b)
;= #f
(if (and (> b a) (< b (* a b)))
    b
    a)
;= 4
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))
;= 16
(+ 2 (if (> b a) b a))
;= 6
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))
;= 16

; 1.2
(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5)))))
   (* 3 (- 6 2) (- 2 7)))

; 1.3
(define (sum-of-squares x y) (+ (square x) (square y)))

(define (sum-of-larger-squares x y z)
  (cond ((and (> x z) (> y z)) (sum-of-squares x y))
        ((and (> x y) (> z y)) (sum-of-squares x z))
        ((and (> y x) (> z x)) (sum-of-squares y z))))

; 1.4
; This procedure tests the sign of b then applys either the addition
; or subtraction operator to a and b to add the absolute value of b to a.