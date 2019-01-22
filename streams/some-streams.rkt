#lang racket

(define (enum a b)
  (if (> a b)
    empty-stream
    (stream-cons a (enum (+ a 1) b))))
