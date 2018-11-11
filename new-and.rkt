#lang racket

(define (new-and . lst)
  (define (loop lst)
    (cond [(null? lst) #t]
          [(not (car lst)) #f]
          [else (loop (cdr lst))]))
  (loop lst))

(new-and (> 2 1))
(new-and (< 3 5) (= 3 4))
(new-and (> 2 1) (= 9 9))
(new-and #t #t (> 2 1))
