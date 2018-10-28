#lang racket

(define (member? lst x)
  (if (= (length lst) 1)
    (if (= (car lst) x) #t #f)
    (if (= (car lst) x) #t (member? (cdr lst) x))))

(member? '(1 2 3 4) 8)
