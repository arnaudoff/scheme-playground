#lang racket

(define (compose f x n)
  (if (= n 1)
    (f x)
    (f (compose f x (- n 1)))))

(compose (lambda (x) (/ x 2)) 1024 3)
(compose (lambda (x) (* 10 x)) 5 3)
