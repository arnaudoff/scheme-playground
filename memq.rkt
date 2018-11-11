#lang racket

(define (my-memq symbol lst)
  (cond [(null? lst) #f]
        [(eq? (car lst) symbol) lst]
        [else (my-memq symbol (cdr lst))]))

(my-memq 'a '(x 1 2 y))
(my-memq 'a '(x t a b c a))
