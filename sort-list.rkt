#lang racket

(define (sort_list lst)
  (if (or (null? lst) (null? (cdr lst)))
    #t
    (if (< (car lst) (cadr lst)) #f (sort_list (cdr lst)))))

(sort_list '(1 2 3 4 5))
(sort_list '())
(sort_list '(1 2 3))
(sort_list '(4 3 2 8))
