#lang racket

(define (lengthz xs)
  (if (null? xs)
    0
    (+ 1 (lengthz (cdr xs)))))

(lengthz '(1 2 3 4 5))
