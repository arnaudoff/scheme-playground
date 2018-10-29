#lang racket

(define (reverse-iter lst)
  (define (loop lst result)
    (if (null? lst)
      result
      (loop (cdr lst) (cons (car lst) result))))
  (loop lst '()))

(reverse-iter '(1 2 3 4 5 6))
(reverse-iter '(7 8 9))
