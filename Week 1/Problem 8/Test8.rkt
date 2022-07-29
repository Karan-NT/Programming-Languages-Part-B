#lang racket

(require rackunit)
(require "stream-for-n-steps.rkt")
(require "Problem8.rkt")

(check-equal? (stream-for-n-steps (cycle-lists (list 1 2 3) (list "a" "b")) 3) (list (cons 1 "a") (cons 2 "b") (cons 3 "a")) 
                 "cycle-lists test")