#lang racket

(define (take count lst)
  (define (loop remainingCount lst result)
    (if (= remainingCount 0)
      (reverse result)
      (loop (- remainingCount 1) (cdr lst) (cons (car lst) result))))
  (loop count lst '()))

(take 4 '(1 2 3 4 5 6))
