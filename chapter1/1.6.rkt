(require racket/include)
(include "../common.rkt")

; Since scheme uses applicative-order evaluation, the arguments to
; new-if will try to be evaluated before new-if itself, resulting in
; infinite recursion when trying to evaluate sqrt-iter by improving 
; the guess.
