#lang sicp
(define (cc amount coin-values)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (no-more? coin-values)) 0)
        (else
         (+ (cc amount
                (except-first-denomination coin-values))
            (cc (- amount
                   (first-denomination coin-values))
                coin-values)))))

(define except-first-denomination
  (lambda (x) (cdr x)))
(define no-more?
  (lambda (x) (null? x)))
(define (first-denomination tar)
  (car tar))

;test
(define us-coins (list 50 25 10 5 1))
(define uk-coins (list 100 50 20 10 5 2 1 0.5))
(define us-coins-alter (list 50 25 1 5 10))

(cc 100 us-coins)
(cc 100 uk-coins)
(cc 100 us-coins-alter)
