#lang racket

(define (my-zip lst1 lst2)
  (define (loop lst1 lst2 result)
    (if (or (null? lst1) (null? lst2))
      result
      (loop
        (cdr lst1)
        (cdr lst2)
        (append result (list (list (car lst1) (car lst2)))))))
    (loop lst1 lst2 '()))

(define lst-1 '(1 3 5 7))
(define lst-2 '(2 4 6 7))

(my-zip lst-1 lst-2)
(my-zip '(1 2) '(3 4))
(my-zip '(1 2 3) '())
(my-zip '() '(4 5 6))
(my-zip '(8 9) '(3 2 1 4))
(my-zip '(8 9 1 2) '(3 4))
