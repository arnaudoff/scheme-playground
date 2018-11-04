#lang racket

(define (dev_by_3? x)
  (= (remainder x 3) 0))

(define (my-all? lst pred?)
  (if (not (pair? lst))
    #t
    (and (pred? (car lst)) (my-all? (cdr lst) pred?))))

(my-all? '(1 2 3 4 5 6 7) even?)
(my-all? '(2 4 6 8) even?)
(my-all? '(2 4 6 8) odd?)
(my-all? '(3 6 2 9) dev_by_3?)
(my-all? '(3) dev_by_3?)
