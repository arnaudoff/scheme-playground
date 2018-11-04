#lang racket

(define (maximum lst)
  (if (null? (cdr lst))
    (car lst)
    (if (> (car lst) (maximum (cdr lst)))
      (car lst)
      (maximum (cdr lst)))))

(maximum '(1 2 3 31 4))
(maximum '(2 3 4 8))
