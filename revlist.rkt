#lang racket

(define (revlist lst)
  (if (null? lst)
    lst
    (append (revlist (cdr lst)) (list (car lst)))))

(revlist '(1 2 3 4))
