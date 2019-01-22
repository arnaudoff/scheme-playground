#lang racket

(define ones (stream-cons 1 ones))

(define (print-stream stream)
  (if (stream-empty? stream)
    (println "")
    (begin
      (println (stream-first stream))
      (println (" "))
      (print-stream (stream-rest stream)))))

(print-stream ones)
