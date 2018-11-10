#lang racket

(define (matrix-skip-row lst n)
  (define (loop rows n index result)
    (cond [(null? rows) (reverse result)]
          [(= index n) (loop (cdr rows) n (+ index 1) result)]
          [else (loop (cdr rows) n (+ index 1) (cons (car rows) result))]))
  (loop lst n 0 '()))

(matrix-skip-row '((1 2 3) (4 5 6) (7 8 9)) 1)
(matrix-skip-row '((1 2 3) (4 5 6) (7 8 9) (10 11 12)) 2)
