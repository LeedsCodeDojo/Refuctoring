#lang racket/base

(define (fizz number)
  (define (impl-xrat-sum n arg) (eq? (modulo arg n) 0))
  (if (impl-xrat-sum 15 number) "FizzBuzz"
      (if (impl-xrat-sum 5 number) "Buzz"
          (if (impl-xrat-sum 3 number) "Fizz"
              (number->string number)))))
  
(provide fizz)