#lang racket

(define (curry2 f)
  (lambda (x)
    (lambda (y)
      (f x y))))

(define (uncurry2 f)
  (lambda (x y)
    ((f x) y)))
