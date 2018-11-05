#lang racket

(define (max-list-element lst)
  (if (null? (cdr lst))
    (car lst)
    (if (> (car lst) (max-list-element (cdr lst)))
      (car lst)
      (max-list-element (cdr lst)))))

(max-list-element '(1 2 3 31 4))
(max-list-element '(2 3 4 8))
