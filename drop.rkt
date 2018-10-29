#lang racket

(define (drop lst n)
  (define (loop droppedCount result)
    (if (= droppedCount n)
      result
      (loop (+ droppedCount 1) (cdr result))))
  (loop 0 lst))

(drop '(1 2 3 4 5 6) 3)
(drop '(1 2 3 4 5 6) 5)
