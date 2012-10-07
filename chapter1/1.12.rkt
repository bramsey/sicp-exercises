(require racket/include)
(include "../common.rkt")

(define (pascal row col)
  (cond ((or (= row 1)
             (= col 1)
             (= col row)) 1)
        ((or (< row 1)
             (< col 1)
             (> col row)) 0)
        (else (+ (pascal (- row 1) (- col 1))
                 (pascal (- row 1) col)))))

; tests
(pascal 1 1) ;= 1
(pascal 100 1) ;= 1
(pascal 20 20) ;= 1
(pascal 5 3) ;= 6
(pascal 4 3) ;= 3
