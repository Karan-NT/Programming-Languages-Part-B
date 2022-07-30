#lang racket

(require rackunit)
(require "Problem3.rkt")

(check-equal? (list-nth-mod (list 0 1 2 3 4) 2) 2 "list-nth-mod test")