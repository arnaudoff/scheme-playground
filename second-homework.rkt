#lang racket

(require rackunit)
(require rackunit/text-ui)

(define (nth-prime n)
  (define (prime? n)
    (define (loop n index)
      (cond [(< n (* index index)) #t]
            [(zero? (modulo n index)) #f]
            [else (loop n (add1 index))]))
    (loop n 2))

  (define (loop primes_found number)
    (if (prime? number)
      (if (= (add1 primes_found) n)
        number
        (loop (add1 primes_found) (add1 number)))
      (loop primes_found (add1 number)))) (loop 0 2))

(define (choose index_lst llst)
  (define (loop i res indices)
    (if (or (null? indices) (null? llst))
      (reverse res)
      (loop (add1 i)
            (cons (list-ref (list-ref llst (car indices)) i) res) (cdr indices))))
  (loop 0 '() index_lst))

(define (quicksort lst predicate?)
  (if (null? lst)
    '()
    (append (quicksort (filter (lambda (x) (predicate? (car lst) x)) (cdr lst)) predicate?)
            (list (car lst))
            (quicksort (filter (lambda (x) (not (predicate? (car lst) x))) (cdr lst)) predicate?))))

(define prime-tests (test-suite
    "nth-prime tests"

    (test-case "" (check-equal? (nth-prime 1) 2))
    (test-case "" (check-equal? (nth-prime 6) 13))
    (test-case "" (check-equal? (nth-prime 13) 41))
))

(define choose-tests (test-suite
    "choose tests"

    (test-case "" (check-equal? (choose '(1 2 3) '()) '()))
    (test-case "" (check-equal? (choose '() '((1 2 0) (4 5 6) (7 2 9))) '()))
    (test-case "" (check-equal? (choose '(2 3 1 0) '((0 1 2 3) (10 11 12 13) (20 21 22 23) (30 31 32 33))) '(20 31 12 3)))
    (test-case "" (check-equal? (choose '(1 2 0) '((1 2 0) (4 5 6) (7 2 9))) '(4 2 0)))
))

(define sort-tests (test-suite
    "quicksort tests"

    (test-case "" (check-equal? (quicksort '() >) '()))
    (test-case "" (check-equal? (quicksort '(5 9 3 2 1) >) '(1 2 3 5 9)))
    (test-case "" (check-equal? (quicksort '(8 9 4 2 3 5 22) <) '(22 9 8 5 4 3 2)))
))

(run-tests prime-tests 'verbose)
(run-tests choose-tests 'verbose)
(run-tests sort-tests 'verbose)
