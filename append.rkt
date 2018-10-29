#lang racket

(define (my-append lst1 lst2)
  (if (null? lst1)
    lst2
    (cons (car lst1) (my-append (cdr lst1) lst2))))

(my-append '(4 5 6) '(1 2 3))
(my-append '(1 2 3) '())
(my-append '() '(1 2 3))
