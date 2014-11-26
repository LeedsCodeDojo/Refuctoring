#lang racket/base

(require rackunit
         "FizzBuzz_Nasty.rkt")

(check-equal? (fizz 1) "1" "single number converted to string")
(check-equal? (fizz 2) "2" "single number converted to string")
(check-equal? (fizz 3) "Fizz" "number divisible by 3 gives Fizz")
(check-equal? (fizz 6) "Fizz" "number divisible by 3 gives Fizz")
(check-equal? (fizz 5) "Buzz" "number divisible by 5 gives Buzz")
(check-equal? (fizz 10) "Buzz" "number divisible by 5 gives Buzz")
(check-equal? (fizz 15) "FizzBuzz" "number divisible by 3 and 5 gives FizzBuzz")
(check-equal? (fizz 30) "FizzBuzz" "number divisible by 3 and 5 gives FizzBuzz")

"**********************"
"*** Tests Complete ***"
"**********************"