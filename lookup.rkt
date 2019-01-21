#lang racket

(define (assq2 key a-list)
  (cond [(null? a-list) '()]
        [(eq? key (caar a-list)) (car a-list)]
        [else (assq2 key (cdr a-list))]))

; lookup returns the association, while assq, assv and assoc implementations
; return a pair
(define (lookup key table)
  (let [(record (assq2 key (cdr table)))]
    (if (null? record) '() (cdr record))))
