#lang racket

(define (g a)
  (define (square x)
    (* x x))

  (define (sum_of_squares x y)
    (+ (square x) (square y)))

  (sum_of_squares (+ a 3) (* a 2)))

(g 5)
