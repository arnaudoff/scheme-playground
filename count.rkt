#lang racket

(define (count pred? lst)
  (apply + (map (lambda (x) (if (pred? x) 1 0)) lst)))

(count even? '(1 2 3 4 5 6))
