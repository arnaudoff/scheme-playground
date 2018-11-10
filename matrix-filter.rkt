#lang racket

(define (matrix-filter f lst)
  (map (lambda (x) (filter f x)) lst))

(matrix-filter even? '((1 2 3) (4 5 6) (7 8 9)))
