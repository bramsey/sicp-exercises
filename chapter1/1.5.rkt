#lang racket
(require racket/include)
(include "../common.rkt")

; For applicative-order evaluation, the test will try to evaluate p
; before the predicate, resulting in an infinite expansion of p.
; For normal-order evaluation, the test will evaluate to 0
; and never try to evaluate the function p.