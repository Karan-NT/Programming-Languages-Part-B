#lang racket

(define (stream-add-zero s x)
  (cons (cons 0 (s x)) (lambda () (stream-add-zero s (+ x 1)))))

(provide stream-add-zero)