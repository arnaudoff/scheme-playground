#lang racket

(define (member? lst elem)
  (if (empty? lst) #f
      (or (eq? (car lst) elem) (member? (cdr lst) elem))))

(define (unique-append lst1 elem)
  (if (member? lst1 elem)
    lst1
    (append lst1 (list elem))))

(define (union lst1 lst2)
  (define (loop lst1 lst2 result)
    (if (and (null? lst1) (null? lst2))
      result
      (if (null? lst1)
        (loop lst1 (cdr lst2) (unique-append result (car lst2)))
        (loop (cdr lst1) lst2 (unique-append result (car lst1))))))

  (loop lst1 lst2 '()))

(union '(2 3 5) '(4 1 3 2))
(union '(1 2 3) '(1 2 3))
(union '(1) '())
(union '() '())
