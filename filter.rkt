#lang racket

(define (my-filter lst pred?)
  (if (not (pair? lst))
    null
    (if (pred? (car lst))
      (cons (car lst) (my-filter (cdr lst) pred?))
      (my-filter (cdr lst) pred?))))

(define (div_by_3? x)
  (= (remainder x 3) 0))

(my-filter '(1 2 3 4 5) even?)
(my-filter '(1 2 3 4 5) odd?)
(my-filter '(1 2 3 4 5 6 9) div_by_3?)
(my-filter '(5) even?)
(my-filter '(5) odd?)
(my-filter '() even?)
