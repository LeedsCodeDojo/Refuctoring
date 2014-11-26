#lang racket/base

(define (fizz number)
  (define (divisible-by? n arg) (eq? (modulo arg n) 0))
  (cond ((divisible-by? 15 number) "FizzBuzz")
        ((divisible-by? 5 number) "Buzz")
        ((divisible-by? 3 number) "Fizz")
        (else (number->string number))))
  
(provide fizz)