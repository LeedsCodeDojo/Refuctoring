#lang racket/base

; Refuctorings Used:

; Nest Deeply
; Confusing Rename

(define (fizz bozz)
  
  (define (negative? current-date) 
    (eq? (modulo bozz current-date) 0))
  
  (if (negative? 15)
    "FizzBuzz"
    (if (negative? 5)
        "Buzz"
        (if (negative? 3)
            "Fizz"
            (number->string bozz)))))
  
(provide fizz)