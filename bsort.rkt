(define l ( list 5 4 3 2 1 ) )

> l
'(5 4 3 2 1)

> (define (bsort l)
    (if (null? (cdr l))
    l
     (if (< (car l) (cadr l))
       (cons (car l) (bsort (cdr l)))
    (cons (cadr l) (bsort(cons (car l) (cdr (cdr l)))))))
  )
  
(define (exc N l)
    (cond ((= N 1) (bsort l))
     (else (exc (- N 1) (bsort l)))))

> (exc 5 l)
'(1 2 3 4 5)

> l
'(5 4 3 2 1)




















> (define (bsort l)
    (if (null? (cdr l))
    l
     (if (< (car l) (cadr l))
       (cons (car l) (bsort (cdr l)))
    (cons (cadr l) (bsort(cons (car l) (cdr (cdr l)))))))
  )
  
(define (exc N l)
   (if (> N 1)
    (exc (- N 1) (bsort l))
   (bsort l)
 )
  )
  
> (exc 5 l)
'(1 2 3 4 5)