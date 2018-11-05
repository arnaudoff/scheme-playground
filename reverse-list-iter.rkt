#lang racket

(define (reverse-list-iter lst)
  (define (loop lst result)
    (if (null? lst)
      result
      (loop (cdr lst) (cons (car lst) result)))) (loop lst '()))

(reverse-list-iter '(1 2 3 4 5))
