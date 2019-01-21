#lang racket

(define (make-account balance)
  (define (withdraw amount)
    (if (>= balance amount)
      (begin (set! balance (- balance amount)) balance)
          "Cannot have negative balance"))

  (define (deposit amount)
    (set! balance (+ balance amount)) balance)

  (define (dispatch m)
    (cond [(eq? m 'withdraw) withdraw]
          [(eq? m 'deposit) deposit]
          [else (error "Undefined method to dispatch!" m)])) dispatch)

(define foo-account (make-account 1000))

((foo-account 'withdraw) 500)
((foo-account 'withdraw) 500)
((foo-account 'withdraw) 10)
((foo-account 'deposit) 100)
((foo-account 'withdraw) 50)
