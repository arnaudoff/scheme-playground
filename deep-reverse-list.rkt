#lang racket

(define (atom? x)
  (not (pair? x)))

(define (deep-reverse lst)
  (cond
    [(null? lst) '()]
    [(atom? lst) lst]
    [else (append (deep-reverse (cdr lst))
                  (list (deep-reverse (car lst))))]))

(deep-reverse '(1 (2 3) (4 (5 6))))
