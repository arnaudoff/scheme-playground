#lang racket

(define (matrix-map f lst)
  (map (lambda (x) (map f x)) lst))

(matrix-map (lambda (x) (* x x)) '((1 2 3) (4 5 6) (7 8 9)))
