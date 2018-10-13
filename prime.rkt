#lang racket

(define (prime? n)
  (define (loop n index)
    (cond [(< n (* index index)) #t]
          [(zero? (modulo n index)) #f]
          [else (loop n (add1 index))]))
  (loop n 2))

(prime? 335)
(prime? 772)
(prime? 221)
(prime? 17)
(prime? 23)
