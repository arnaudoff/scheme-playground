#lang racket

(define (delete-all x lst)
  (cond [(null? lst) '()]
        [(= (car lst) x) (delete-all x (cdr lst))]
        [else (cons (car lst) (delete-all x (cdr lst)))]))

(delete-all 5 '(1 2 3 5 8 9 3 5 9 9 1 5))
