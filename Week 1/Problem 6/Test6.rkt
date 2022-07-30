#lang racket

(require rackunit)
(require "stream-for-n-steps.rkt")
(require "Problem6.rkt")

(check-equal? (stream-for-n-steps dan-then-dog 1) (list "dan.jpg") "dan-then-dog test")