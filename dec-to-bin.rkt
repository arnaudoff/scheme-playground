#lang racket

(define (dec-to-bin n)
  (cond [(zero? n) '()]
    [else (cons (remainder n 2) (dec-to-bin (quotient n 2)))]))

(reverse (dec-to-bin 5296))
(reverse (dec-to-bin 42))
