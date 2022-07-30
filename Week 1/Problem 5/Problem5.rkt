#lang racket

(define (funny-number-stream x)
  (define y 0)
  (if (= 0 (remainder x 5))
      (set! y (* -1 x))
      (set! y x))
  (cons y (lambda () (funny-number-stream (+ x 1)))))

(provide funny-number-stream)