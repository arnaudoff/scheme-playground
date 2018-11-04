#lang racket

(define (minimum lst)
  (if (null? (cdr lst))
    (car lst)
    (if (< (car lst) (minimum (cdr lst)))
      (car lst)
      (minimum (cdr lst)))))

(minimum '(1 2 3 4 0 6 7))
(minimum '(42))
(minimum '(3 4 1))
