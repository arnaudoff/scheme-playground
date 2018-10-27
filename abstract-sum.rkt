#lang racket

(define (id x) x)
(define (cube x) (* x x x))
(define (addOne x) (+ x 1))

(define (sum term next a b)
  (if (> a b)
    0
    (+ (term a)
       (sum term next (next a) b))))

(define (sum-int a b)
  (sum id addOne a b))

(define (sum-cube a b)
  (sum cube addOne a b))

(sum-int 1 100)
(sum-cube 1 100)
