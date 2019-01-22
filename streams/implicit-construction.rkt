#lang racket

(define (print-stream stream)
  (if (stream-empty? stream)
    (display "")
    (begin (display " ")
           (display (stream-first stream) (print-stream (stream-rest stream))))))

(define (natural-stream x)
  (stream-cons x (natural-stream (+ x 1))))

(define naturals (natural-stream 1))

(print-stream naturals)
