#lang racket

(define (make-tree root left right)
  (list root left right))

(define (root tree)
  (car tree))

(define (left-tree tree)
  (car (cdr tree)))

(define (right-tree tree)
  (car (cdr (cdr tree))))

(define (empty-tree? tree)
  (null? tree))

(define (leaf? tree)
  (and (empty-tree? (left-tree tree))
       (empty-tree? (right-tree tree))))

(define (member-tree? x t)
  (cond [(empty-tree? t) #f]
        [(= x (root t)) #t]
        [else (or (member-tree? x (left-tree t))
                  (member-tree? x (right-tree t)))]))

(define (depth t)
  (if (empty-tree? t) 0
    (+ 1 (max (depth (left-tree t))
              (depth (right-tree t))))))

(define (member_leaf? x t)
  (cond [(empty-tree? t) #f]
        [(leaf? t) (= x (root t))]
        [else (or (member_leaf? x (left-tree t))
                   (member_leaf? x (right-tree t)))]))
