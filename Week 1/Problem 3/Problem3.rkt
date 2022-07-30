#lang racket

(define (list-nth-mod xs n)
  (cond
    [(< n 0)
     (error "list-nth-mod: negative number")]
    [(< (length xs) 1)
     (error "list-nth-mod: empty list")])
  (define i (remainder  n (length xs)))
  (list-ref xs i))

(provide list-nth-mod)