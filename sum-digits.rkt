#lang racket

(define (digits n)
  (cond
    [(zero? n) '()]
    [else (cons (remainder n 10) (digits (quotient n 10)))]))

(define (sum-digits n)
  (apply + (digits n)))

(sum-digits 4)
(sum-digits 492148)
