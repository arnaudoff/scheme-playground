#lang racket

(define (count-digits-iter n)
  (define (loop n acc)
    (if (< n 10)
      (+ 1 acc)
      (loop (quotient n 10) (+ acc 1))))
  (loop n 0))

(count-digits-iter 100)
(count-digits-iter 3342)
(count-digits-iter 939339)
