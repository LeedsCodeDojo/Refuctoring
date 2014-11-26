#lang racket/base

(define (fizz number)
  
  (define (divisible-by? dividend) 
    (eq? (modulo number dividend) 0))
  
  (cond 
    ((divisible-by? 15) "FizzBuzz")
    ((divisible-by? 5) "Buzz")
    ((divisible-by? 3) "Fizz")
    (else (number->string number))))
  
(provide fizz)