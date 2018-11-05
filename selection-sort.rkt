#lang racket

(define (min-list-element lst)
  (if (null? (cdr lst)) (car lst)
    (min (car lst) (min-list-element (cdr lst)))))

(define (delete x lst)
  (cond [(null? lst) '()]
        [(= x (car lst)) (cdr lst)]
        [else (cons (car lst) (delete x (cdr lst)))]))

(define (selection-sort lst)
  (if (null? lst)
    '()
    (let [(m (min-list-element lst))]
                      (cons m (selection-sort (delete m lst))))))

(selection-sort '(7 8 3 2 99 33 44 12))
