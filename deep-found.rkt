#lang racket

(define (deep-found? item lst)
  (cond [(null? lst) #f]
        [(not (pair? (car lst))) (if (eq? item (car lst)) #t (deep-found? item (cdr lst)))]
        [else (or (deep-found? item (car lst))
                   (deep-found? item (cdr lst)))]))
