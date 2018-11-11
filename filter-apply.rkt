#lang racket

(define (my-filter pred? lst)
  (apply append (map (lambda (x) (if (pred? x) (list x) '())) lst)))
