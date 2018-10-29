#lang racket

(define (make-rat n d)
  (if (= n 0) (cons 0 1)
    (let ((g (gcd (abs n) (abs d))))
      (if (or (and (> n 0) (> d 0))
              (and (< n 0) (< d 0)))
        (cons (/ (abs n) g) (/ (abs d) g))
        (cons (- (/ (abs n) g)) (/ (abs d) g))))))

(define (numer x)
  (car x))

(define (denom x)
  (cdr x))

(define (addRational x y)
  (make-rat (+ (* (numer x) (denom y))
               (* (denom x) (numer y)))
            (* (denom x) (denom y))))

(define (substractRational x y)
  (make-rat (- (* (numer x) (denom y))
               (* (denom x) (numer y)))
            (* (denom x) (denom y))))

(define (multiplyRat x y)
  (make-rat (* (numer x) (numer y))
            (* (denom x) (denom y))))

(define (divideRat x y)
  (make-rat (* (numer x) (denom y))
            (* (denom x) (numer y))))

(define (equalsRat x y)
  (= (* (numer x) (denom y)) (* (denom x) (numer y))))
