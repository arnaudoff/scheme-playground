#lang racket

(define (zipWith f flst slst)
  (if (or (null? flst) (null? slst))
    '()
    (cons (f (car flst) (car slst)) (zipWith f (cdr flst) (cdr slst)) )))

(zipWith + '(1 2 3 4) '(40 50 60 70 80))
