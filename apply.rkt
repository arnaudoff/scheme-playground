#lang racket

(apply + '(2 8))
(apply * '(1 2 3))
(apply + (list (+ 2 3) (- 5 2) (* 3 5)))
(apply append '((1 2 3) (4 5 6) (7) (8 9 10)))
