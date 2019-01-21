(define (assoc-insert! key value table)
  (let [(record (assq key (cdr table)))]
    (if (null? record)
      (begin (set-cdr! table (cons (cons key value) (cdr table))) table)
      (begin (set-cdr! record value) table))))
