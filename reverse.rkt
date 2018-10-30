#lang racket

(define (reverse n)
  (define (rev n ten-power)
    (if (= ten-power 0)
      n
      (+ (* (remainder n 10) (expt 10 ten-power)) (rev (quotient n 10) (- ten-power 1)))))

  (define (count-digits n)
    (if (< n 10)
      1
      (+ 1 (count-digits (quotient n 10)))))

  (rev n (- (count-digits n) 1)))

(reverse 123)
(reverse 234)
(reverse 10234003)