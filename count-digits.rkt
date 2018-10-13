#lang racket

(define (count-digits n)
  (if (< n 10)
    1
    (+ 1 (count-digits (/ n 10)))))

(count-digits 2378)
(count-digits 3)
(count-digits 54321)
