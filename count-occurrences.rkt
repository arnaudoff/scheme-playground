#lang racket

(define (count-occurences lst x)
  (if (= (length lst) 1)
    (if (= (car lst) x) 1 0)
    (if (= (car lst) x)
      (+ 1 (count-occurences (cdr lst) x))
      (count-occurences (cdr lst) x))))

(count-occurences '(1 2 3 4 1 5 1 2 7) 2)
(count-occurences '(1 2 3 4 1 5 1 2 7) 7)
(count-occurences '(1 2 3 4 1 5 1 2 7) 1)
