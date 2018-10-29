#lang racket

(define x 2)

(let [(x 3)
      (y (+ x 2))] (* x y))

(let* [(x 3)
       (y (+ x 2))]
  (* x y))
