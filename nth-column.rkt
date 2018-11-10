#lang racket

(define (nth-column lst column)
  (map (lambda (x) (list-ref x column)) lst))

(nth-column '((1 2 3) (4 5 6) (7 8 9)) 2)
