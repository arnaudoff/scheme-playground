#lang racket

(define (print-stream stream)
  (if (stream-empty? stream)
    (display "")
    (begin (display " ")
           (display (stream-first stream)) (print-stream (stream-rest stream)))))
