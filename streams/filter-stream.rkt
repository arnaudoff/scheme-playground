#lang racket

(define (filter-stream pred? stream)
  (cond [(stream-empty? stream) empty-stream]
        [(pred? (stream-first stream))
         (stream-cons (stream-first stream) (filter-stream pred? (stream-rest stream)))]
        [else (filter-stream pred? (stream-rest stream))]))
