#lang racket

(define (make-sum l r)
  (list '+ l r))

(define (make-product l r)
  (list '* l r))

(define (constant? expr)
  (number? expr))

(define (variable? expr)
  (symbol? expr))

(define (same-variables? v1 v2)
  (and (variable? v1) (variable? v2) (eq? v1 v2)))

(define (sum? expr)
  (if (pair? expr)
    (eq? (car expr) '+)
    #f))

(define (product? expr)
  (if (pair? expr)
    (eq? (car expr) '*)
    #f))

(define (first-arg expr)
  (car (cdr expr)))

(define (second-arg expr)
  (car (cdr (cdr expr))))

(define (derive expr var)
  (cond [(constant? expr) 0]
        [(variable? expr) (if (same-variables? expr var) 1 0)]
        [(sum? expr)
         (make-sum (derive (first-arg expr) var)
                   (derive (second-arg expr) var))]
        [(product? expr)
         (make-sum (make-product (first-arg expr)
                                 (derive (second-arg expr) var))
                   (make-product (derive (first-arg expr) var)
                                 (second-arg expr)))]))

(derive '(+ x 42) 'x)
(derive '(* x y) 'x)
