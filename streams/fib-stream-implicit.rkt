#lang racket

(define (fib-generator x y)
  (stream-cons x (fib-generator y (+ x y))))

(define fibstr (fib-generator 0 1))
