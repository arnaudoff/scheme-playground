#lang racket

(define (diagonal lst)
  (define (loop lst result size index)
    (if (< size 0)
      (reverse result)
      (loop (cdr lst) (cons (list-ref (car lst) index) result) (- size 1) (+ index 1))))
  (loop lst '() (- (min (length lst) (length (first lst))) 1) 0))

(diagonal '((1 2 3) (4 5 6) (7 8 9)))
(diagonal '((1 0 0) (0 1 0) (0 0 1)))
(diagonal '((1 0 0 0) (0 1 0 0) (0 0 1 0) (0 0 0 1)))
(diagonal '((1 0 0) (0 1 0) (0 0 1) (0 0 0)))
(diagonal '((1 2 3 4 5) (6 7 8 9 10) (11 12 13 14 15)))
