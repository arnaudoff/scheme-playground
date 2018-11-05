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

(define (tree-member? tree x)
  (cond [(empty-tree? tree) #f]
        [(= x (root tree)) #t]
        [else
          (or (tree-member? (left-tree tree) x)
              (tree-member? (right-tree tree) x))]))

(define (depth tree)
  (if (empty-tree? tree)
    0
    (+ 1 (max (depth (left-tree tree))
              (depth (right-tree tree))))))

(define tree (make-tree 1 (make-tree 2 4 5) (make-tree 3 6 7)))

(tree-member? tree 7)
