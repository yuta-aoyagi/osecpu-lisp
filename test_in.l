(atom (quote x))
(atom (quote (x . a)))
(eq (quote x) (quote x))
(eq (quote x) (quote a))
(car (quote (x . a)))
(car (quote ((x . a) . y)))
(cdr (quote (x . a)))
(cdr (quote ((x . a) . y)))
(cons (quote x) (quote a))
(cons (quote (x . a)) (quote y))
(eq (car (cons (quote x) (quote y))) (quote x))
(eq (cdr (cons (quote x) (quote y))) (quote y))

(((lambda (f)
    ((lambda (x) (f (lambda (y) ((x x) y))))
     (lambda (x) (f (lambda (y) ((x x) y))))))

  (lambda (g)
    (lambda (x)
      (cond
       ((atom x) x)
       (t (g (car x)))))))
 (quote ((a . b) . c)))

quit
