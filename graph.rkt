#lang racket

(define (make-graph)
  (list 'graph))

(define (vertex? v g)
  (let [(association (assq v (cdr g)))]
    (not (null? association))))

(define (edge? u v g)
  (let [(association (assq u (cdr g)))]
    (memq v (cdr association))))

(define (insert-edge! u v g)
  (let [(association (assq u (cdr g)))]
    (set-cdr! association (cons v (cdr association))) g))

(define (delete-edge! u v g)
  (let [(association (assq u (cdr g)))]
    (delete! v association) g))

(define (delete! x lst)
  (let [(f (pr x lst))]
    (set-cdr! f (cddr f)) lst))

(define (prev x lst)
  (if (eq? (cadr lst) x) lst (prev x (cdr lst))))
