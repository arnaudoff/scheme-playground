#lang racket

(define (sum start end)
  (if (> start end) 0 (+ start (sum (+ start 1) end))))

(sum 1 100)
(sum 500 150)
(sum 9 9)
