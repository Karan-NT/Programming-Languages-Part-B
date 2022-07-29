#lang racket

(require rackunit)
(require "stream-for-n-steps.rkt")
(require "Problem5.rkt")

(check-equal? (stream-for-n-steps funny-number-stream 16) (list 1 2 3 4 -5 6 7 8 9 -10 11 12 13 14 -15 16) "funny-number-stream test")