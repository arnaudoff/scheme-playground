#lang racket

(define (append-streams str1 str2)
  (if (stream-empty? str1)
    str2
    (stream-cons (stream-first str1) (append-streams (stream-rest str1) str2))))
