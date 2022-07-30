#lang racket

(define (dan-then-dog x)
  (define y " ")
  (if (= 0 (remainder x 2))
      (set! y "dog.jpg")
      (set! y "dan.jpg"))
  (cons y (lambda () (dan-then-dog (+ x 1)))))

(provide dan-then-dog)