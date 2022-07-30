#lang racket

(define (cycle-lists xs ys i)
  (define x 0)
  (define y 0)
  (if (= 0 (remainder i (length xs)))
      (set! x (list-ref xs (- (length xs) 1)))
      (set! x (list-ref xs (- (remainder i (length xs)) 1))))
  (if (= 0 (remainder i (length ys)))
      (set! y (list-ref ys (- (length ys) 1)))
      (set! y (list-ref ys (- (remainder i (length ys)) 1))))
  (cons (cons x y) (lambda () (cycle-lists xs ys (+ i 1)))))

(provide cycle-lists)