#lang racket

(define (bintodec n)
  (if (zero? n)
      n
      (+ (remainder n 10) (* 2 (bintodec (quotient n 10))))))

(bintodec 101010)
