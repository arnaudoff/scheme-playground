#lang racket

(define (derive f dx)
  (lambda (x) (/ (- (f (+ x dx)) (f x)) dx)))

(define (cube x)
  (* x x x))

((derive cube 0.001) 5)
