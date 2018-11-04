#lang racket

(define (dev_by_3? x)
  (= (remainder x 3) 0))

(define (my-any? lst pred?)
  (if (not (pair? lst))
    #f
    (or (pred? (car lst)) (my-any? (cdr lst) pred?))))

(my-any? '(1 2 3 4 5 6 7) even?)
(my-any? '(2 4 6 8) odd?)
(my-any? '(2 4 7 8) dev_by_3?)
