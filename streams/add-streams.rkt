#lang racket

(define (add-streams stream1 stream2)
  (stream-cons (+ (stream-first stream1)
                  (stream-first stream2))
               (add-streams (stream-rest stream1)
                            (stream-rest stream2))))
