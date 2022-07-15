#lang racket

; ----------------------------------------------------------
; Problem #1 -----------------------------------------------
; ----------------------------------------------------------

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

;(sequence 3 11 2)


; ----------------------------------------------------------
; Problem #2 -----------------------------------------------
; ----------------------------------------------------------

(define (string-append-map xs suffix)
  (define (add-suffix x)
    (string-append x suffix))
  (map add-suffix xs))

;(string-append-map '("a" "b") "c")


; ----------------------------------------------------------
; Problem #3 -----------------------------------------------
; ----------------------------------------------------------

(define (list-nth-mod xs n)
  (cond
    [(< n 0)
     (error "list-nth-mod: negative number")]
    [(< (length xs) 1)
     (error "list-nth-mod: empty list")])
  (define i (remainder  n (length xs)))
  (list-ref xs i))

;(list-nth-mod '(1 2 3 4 20 30 40 6 7 8 9 11 15 61) 28)


; ----------------------------------------------------------
; Problem #4 -----------------------------------------------
; ----------------------------------------------------------

(define (stream-for-n-steps s n)
  (define numbers '())
  (for ([i (in-range 1 (+ n 1))])
    (set! numbers (append numbers (list (car (s i))))))
  numbers)


; ----------------------------------------------------------
; Problem #5 -----------------------------------------------
; ----------------------------------------------------------

(define (funny-number-stream x)
  (define y 0)
  (if (= 0 (remainder x 5))
      (set! y (* -1 x))
      (set! y x))
  (cons y (lambda () (funny-number-stream (+ x 1)))))

;(stream-for-n-steps funny-number-stream 5)


; ----------------------------------------------------------
; Problem #6 -----------------------------------------------
; ----------------------------------------------------------

(define (dan-then-dog x)
  (define y " ")
  (if (= 0 (remainder x 2))
      (set! y "dog.jpg")
      (set! y "dan.jpg"))
  (cons y (lambda () (dan-then-dog (+ x 1)))))

;(stream-for-n-steps dan-then-dog 5)


; ----------------------------------------------------------
; Problem #7 -----------------------------------------------
; ----------------------------------------------------------

(define (stream-add-zero s x)
  (cons (cons 0 (s x)) (lambda () (stream-add-zero s (+ x 1)))))

;(stream-add-zero funny-number-stream 5)


; ----------------------------------------------------------
; Problem #8 -----------------------------------------------
; ----------------------------------------------------------

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

;(cycle-lists '(1 2 3) '("a" "b") 7)


; ----------------------------------------------------------
; Problem #9 -----------------------------------------------
; ----------------------------------------------------------



; ----------------------------------------------------------
; Problem #10 ----------------------------------------------
; ----------------------------------------------------------


