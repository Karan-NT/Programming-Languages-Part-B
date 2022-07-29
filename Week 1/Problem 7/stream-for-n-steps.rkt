#lang racket

(define (stream-for-n-steps s n)
  (define numbers '())
  (for ([i (in-range 1 (+ n 1))])
    (set! numbers (append numbers (list (car (s i))))))
  numbers)

(provide stream-for-n-steps)