#lang racket

(define (my-reduce f lst acc)
  (if (not (pair? lst))
    acc
    (my-reduce f (cdr lst) (f acc (car lst)))))

(my-reduce + '(1 2 3 4 5) 0)
(my-reduce * '(1 2 4 6 8 10) 1)
