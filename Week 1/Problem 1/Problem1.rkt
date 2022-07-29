#lang racket

(define (sequence low high stride)
  (define numbers (list low))
  (define (add-number)
    (cond
      [(< (+ (last numbers) stride) high)
       (set! numbers (append numbers (list (+ (last numbers) stride))))
       (add-number)]
      [(>= (+ (last numbers) stride) high)
       (set! numbers (append numbers (list high)))]))
  (add-number)
  (print numbers))

(provide sequence)