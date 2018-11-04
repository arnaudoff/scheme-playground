#lang racket

(define (sq x)
  (* x x))

(define (my-map lst f)
  (if (not (pair? lst))
    null
    (cons (f (car lst)) (my-map (cdr lst) f))))

(my-map '(1 2 3 4 5) sq)
(my-map '(5) sq)
(my-map '() sq)
