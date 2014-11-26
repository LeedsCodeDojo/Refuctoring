#lang racket/base

(define (fizz date)
  
  (define (divisible-by? dividend) 
    (eq? (modulo date dividend) 0))
  
  (cond 
    ((divisible-by? 15) "FizzBuzz")
    ((divisible-by? 5) "Buzz")
    ((divisible-by? 3) "Fizz")
    (else (number->string date))))
  
(provide fizz)