#lang racket

(define (delete x lst)
  (cond [(null? lst) lst]
        [(= x (car lst)) (cdr lst)]
        [else (cons (car lst) (delete x (cdr lst)))]))

(delete 5 '(2 3 4 5 1 2))
(delete 7 '(2 3 4 5 1 2 7 2 3 910))
(delete 5 '(1 2 3))

