#lang racket

(require rackunit)
(require "Problem4.rkt")

(check-equal? (stream-for-n-steps ones 2) (list 1 1) "stream-for-n-steps test")