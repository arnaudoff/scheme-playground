#lang racket

(define (s i j f)
  (if (> i j) 0 (+ (f i) (s (+ i 1) j f))))
