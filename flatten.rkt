#lang racket

(define (my-flatten lst)
  (define (loop lst result)
    (if (null? lst)
      result
      (if (list? (car lst))
        (loop (cdr lst) (append result (my-flatten (car lst))))
        (loop (cdr lst) (append result (list (car lst)))))))
  (loop lst '()))

(my-flatten '(1 2 (3 (4 (10 11) 5) 6) 7 8))
