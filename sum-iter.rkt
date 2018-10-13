#lang racket

(define (sum-iter start end)
  (define (loop s e acc)
    (if (= s e)
      (+ acc s)
      (loop (+ s 1) e (+ acc s))))
    (loop start end 0))

(sum-iter 1 3)
(sum-iter 1 100)
