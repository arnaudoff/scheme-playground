#lang racket

(define (mult-args . x)
  (apply * x))

(mult-args 1 2 3 4 5)
(mult-args (+ 2 3) 5 10)
