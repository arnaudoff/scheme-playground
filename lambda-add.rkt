#lang racket

(define (add a b)
  (lambda (f)
    (lambda (x) ((a f) ((b f) x)))))

(add 2 3)
