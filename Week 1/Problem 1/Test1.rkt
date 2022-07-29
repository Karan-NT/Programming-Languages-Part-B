#lang racket

(require rackunit)
(require "Problem1.rkt")

(check-equal? (sequence 0 5 1) (list 0 1 2 3 4 5) "Sequence test")