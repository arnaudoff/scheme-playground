#lang racket

(define (nth-column lst n)
  (map (lambda (x) (list-ref x n)) lst))

(define (transpose lst)
  (define (loop lst result size)
    (if (< size 0)
      result
      (loop lst (cons (nth-column lst size) result) (- size 1))))
  (loop lst '() (- (length (first lst)) 1)))

(transpose '((1 2 3) (4 5 6) (7 8 9)))
(transpose '((1 2) (3 4)))
(transpose '((1 2 3 4) (5 6 7 8) (9 10 11 12)))
