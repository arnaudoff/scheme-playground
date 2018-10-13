#lang racket

(define (square x) (* x x))

(define (fast-pow x n)
  (cond
    [(= n 0) 1]
    [(even? n) (square (fast-pow x (/ n 2)))]
    [else (* x (fast-pow x (- n 1)))]))

(fast-pow 10 2)
(fast-pow 2 10)
(fast-pow 2 15)
