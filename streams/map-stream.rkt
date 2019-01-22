#lang racket

(define (map-stream f stream)
  (if (stream-empty? stream)
    empty-stream
    (stream-cons (f (stream-first stream)) (map-stream f (stream-rest stream)))))
