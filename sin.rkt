#lang racket

(define (sum-sins x n)
  (if (= n 1)
      (sin x)
      (+ (sin (expt x n)) (sum-sins x (- n 1)))))

(sum-sins pi 1)
(sum-sins (/ pi 2) 1)
