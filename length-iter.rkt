#lang racket

(define (length-iter lst)
  (define (loop remainingLst count)
    (if (null? remainingLst)
      count
      (loop (cdr remainingLst) (+ 1 count))))
  (loop lst 0))

(length-iter '(1 2 3))
(length-iter '(10 11 12 13))
