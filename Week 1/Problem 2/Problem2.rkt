#lang racket

(define (string-append-map xs suffix)
  (define (add-suffix x)
    (string-append x suffix))
  (map add-suffix xs))

(provide string-append-map)