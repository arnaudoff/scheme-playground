#lang racket

(define (atom? x)
  (not (pair? x)))

(define (count-atoms lst)
  (cond [(null? lst) 0]
        [(atom? (car lst)) (+ 1 (count-atoms (cdr lst)))]
        [else (+ (count-atoms (car lst)) (count-atoms (cdr lst)))]))

(count-atoms '(1 2 (2 (3 4)) (8 (9 (10)))))
(count-atoms '(1 2 (2 (3 4)) () () (8 (9 (10)))))
