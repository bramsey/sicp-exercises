#lang racket
(require racket/include)
(include "../common.rkt")

(define (sum-of-squares x y) (+ (square x) (square y)))

(define (sum-of-larger-squares x y z)
  (cond ((and (> x z) (> y z)) (sum-of-squares x y))
        ((and (> x y) (> z y)) (sum-of-squares x z))
        ((and (> y x) (> z x)) (sum-of-squares y z))))