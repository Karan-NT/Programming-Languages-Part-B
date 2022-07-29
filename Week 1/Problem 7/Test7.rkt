#lang racket

(require rackunit)
(require "stream-for-n-steps.rkt")
(require "Problem7.rkt")

(check-equal? (stream-for-n-steps (stream-add-zero ones) 1) (list (cons 0 1)) "stream-add-zero test")