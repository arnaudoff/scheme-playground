#lang racket

(define (enum a b)
  (if (> a b)
    empty-stream
    (stream-cons a (enum (+ a 1) b))))

(define (accumulate a b null-value term next op)
  (if (> a b)
    null-value
    (op (term a) (accumulate (next a) b null-value term next op))))

(define (factorial n)
  (if (= n 1) 1 (* n (factorial (- n 1)))))

(define (generate-nth n)
  (accumulate 1 n 0 (lambda (x) (/ (factorial x) (expt 2 x))) (lambda (x) (+ x 1)) +))

(define (gen-stream i)
  (stream-cons (generate-nth i) (gen-stream (+ i 1))))

(factorial 5)
(gen-stream 1)

(define (generate-power-nth n)
  (accumulate 1 n 0 (lambda (x) (expt x 2)) (lambda (x) (+ x 1)) +))

(define (gen-power-stream i)
       (stream-cons (generate-power-nth i) (gen-power-stream (+ i 1))))

(stream-first (stream-rest (gen-power-stream 1)))
