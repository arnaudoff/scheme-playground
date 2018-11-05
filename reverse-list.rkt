#lang racket

(define (reverse-list lst)
  (if (null? lst)
    lst
    (append (reverse-list (cdr lst)) (list (car lst)))))

(reverse-list '(1 2 3 4))
