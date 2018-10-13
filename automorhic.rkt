#lang racket

(define (square x) (* x x))

(define (endsWith n k)
  (if (< k 10)
    (if (= (remainder n 10) k) #t #f)
    (if (= (remainder n 10) (remainder k 10))
      (endsWith (quotient n 10) (quotient k 10)) #f)))

(define (automorphic? n) (if (endsWith (square n) n) #t #f))

(automorphic? 25)
(automorphic? 76)
(automorphic? 10)
