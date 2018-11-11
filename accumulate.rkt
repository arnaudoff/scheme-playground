#lang racket

(define (sum-list lst)
  (if (null? lst)
    0
    (+ (car lst) (sum-list (cdr lst)))))

(define (product-list lst)
  (if (null? lst)
    1
    (* (car lst) (product-list (cdr lst)))))

(define (accumulate lst start f)
  (if (null? lst)
    start
    (f (car lst) (accumulate (cdr lst) start f))))

(define (accumulate-iter lst start f)
  (define (loop lst result f)
    (if (null? lst)
      result
      (loop (cdr lst) (f result (car lst)) f)))
  (loop lst start f))

(sum-list '(1 2 3 4))
(product-list '(1 2 3 4))

(accumulate '(1 2 3 4) 0 +)
(accumulate '(1 2 3 4) 1 *)

(accumulate-iter '(1 2 3 4) 0 +)
(accumulate-iter '(1 2 3 4) 1 *)
