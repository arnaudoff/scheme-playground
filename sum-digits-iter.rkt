#lang racket

(define (sum-digits-iter n)
  (define (loop n acc)
    (if (< n 10)
      (+ acc n)
      (loop (quotient n 10) (+ (remainder n 10) acc))))
  (loop n 0))

(sum-digits-iter 123)
(sum-digits-iter 4242)
