#lang racket

(define my-list '(1 2 3 (4 5) (6 (7 8))))

(car my-list)
(car (cdr my-list))
(car (cdr (cdr my-list)))
(car (car (cdr (cdr (cdr my-list)))))
(car (cdr (car (cdr (cdr (cdr my-list))))))
(car (car (cdr (cdr (cdr (cdr my-list))))))
(car (car (cdr (car (cdr (cdr (cdr (cdr my-list))))))))
(car (cdr (car (cdr (car (cdr (cdr (cdr (cdr my-list)))))))))
