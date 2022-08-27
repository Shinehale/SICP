#lang sicp
(define (make-interval a b) (cons a b))
(define (upper-bound x) (cdr x))
(define (lower-bound x) (car x))

(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
                 (- (upper-bound x) (lower-bound y))))

(define x (sub-interval (make-interval 8 9)
                        (make-interval 3 7)))
(upper-bound x)
(lower-bound x)