#lang racket

(define (assq2 key a-list)
  (cond [(null? a-list) '()]
        [(eq? key (caar a-list)) (car a-list)]
        [else (assq2 key (cdr a-list))]))
