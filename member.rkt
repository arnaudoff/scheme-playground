#lang racket

(define (member? lst elem)
  (if (empty? lst) #f
      (or (eq? (car lst) elem) (member? (cdr lst) elem))))

(member? '(1 2 3) 3)
(member? '() 2)
(member? '(1 2 4) 8)
