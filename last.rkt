#lang racket

(define (last lst)
  (if (null? (cdr lst))
    (car lst)
    (last (cdr lst))))

(last '(1 2 3 4))
(last '(1 2 3 4 5))
