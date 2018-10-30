#lang racket

(define (member? lst elem)
  (if (empty? lst) #f
    (or (eq? (car lst) elem) (member? (cdr lst) elem))))

(define (intersection lst1 lst2)
  (define (loop first second result)
    (if (null? first)
      result
      (if (member? second (car first))
       (loop (cdr first) second (append result (list (car first))))
       (loop (cdr first) second result))))
  (loop lst1 lst2 '()))

(intersection '(2 3 5) '(4 1 3 2))
(intersection '(1 2 3) '(1 2 3))
(intersection '(1 2 3) '(4 5 6))
