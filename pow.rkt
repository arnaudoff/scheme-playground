#lang racket

(define (pow x n)
  (if (= 0 n) 1 (* x (pow x (- n 1)))))

(pow 2 3)
(pow 2 10)
(pow 2 15)
(pow 2 16)
