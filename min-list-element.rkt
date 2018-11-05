#lang racket

(define (min-list-element lst)
  (if (null? (cdr lst))
    (car lst)
    (if (< (car lst) (min-list-element (cdr lst)))
      (car lst)
      (min-list-element (cdr lst)))))

(min-list-element '(1 2 3 4 0 6 7))
(min-list-element '(42))
(min-list-element '(3 4 1))
