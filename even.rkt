#lang racket

(define (even? x)
  (if (= (remainder x 2) 0) #t #f))

(even? 16)
(even? 33)
(even? 21)
(even? 4242)
