#lang racket

(define (range start end)
  (define (loop result start end)
    (if (> start end)
      result
      (loop (append result (list start)) (+ start 1) end)))
  (loop '() start end))

(range 1 4)
(range 1 1)
