#lang racket

(define (nth-stream n stream)
  (if (= n 1)
    (stream-first stream)
    (nth-stream (- n 1) (stream-rest stream))))

(define (naturals-generator x)
  (stream-cons x (naturals-generator (+ x 1))))

(define str (naturals-generator 1))

(nth-stream 10 str)
