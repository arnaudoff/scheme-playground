#lang racket

(define (without-last lst)
  (reverse (cdr (reverse lst))))

(without-last '(1 2 3 4))
