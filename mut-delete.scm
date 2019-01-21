(define (nth-elem-sublist n lst)
  (if (= n 1) lst
    (nth-elem-sublist (- n 1) (cdr lst))))

(define (mut-delete lst n)
  (if (= n 1)
    (begin (set! lst (cdr lst)) lst)
    (begin
      (set-cdr! (nth-elem-sublist (- n 1) lst)
                (cdr (nth-elem-sublist n lst))) lst)))
