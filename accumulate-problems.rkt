#lang racket

(define (accumulate a b null-value term op next)
  (if (> a b)
    null-value
    (op (term a) (accumulate (next a) b null-value term op next))))

(accumulate 1 5 0 (lambda (x) x) + (lambda (x) (+ x 1)))

(define (calc-numer a m)
  (accumulate 1 m 1 (lambda (x) (+ a x)) * (lambda (x) (+ x 1))))

(define (calc-denom n m)
  (accumulate (+ n 1) (+ n m) 1 (lambda (x) x) * (lambda (x) (+ x 1))))

(define (calc-expression a n m)
  (accumulate 1 n 0 (lambda (x) (/ (calc-numer a m) (calc-denom x m))) + (lambda (x) (+ x 1))))

(calc-expression 2 2 3)
