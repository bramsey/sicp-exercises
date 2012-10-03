#lang racket
(require racket/include)
(include "../common.rkt")

(define (improve guess x)
  (/ (+ (/ x (square guess)) 
        (* 2 guess)) 
     3))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess)) 
     (* guess .001)))

(define (cubert-iter guess x)
  (if (good-enough? guess x)
      guess
      (cubert-iter (improve guess x) x)))

(define (cubert x)
  (cubert-iter 1.0 x))