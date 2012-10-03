#lang racket
(require racket/include)
(include "../common.rkt")

; Small numbers will not calculate correctly because when the radicand is
; small enough, the guess can become small enough such that the difference 
; between its square and that of the radicand is smaller than the specified precision.
; Large numbers will not calculate correctly because rounding due to finite precision
; results in insignificant digits being lost, so the good-enough? condition will never be met.
(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (improve guess x) guess)) 
     (* guess .001)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))