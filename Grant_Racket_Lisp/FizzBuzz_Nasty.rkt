#lang racket/base

; Refuctorings Used:

; Nest Deeply
; Inline Method
; Disguise Data
; Inappropriate Lambdas

(define fizz 
  (lambda (number)
    ((lambda (condition true-part false-part) (if condition true-part false-part))
     ((lambda (divisor) (eq? (modulo number divisor) 0)) (char->integer #\u000F))
     ((lambda (string1 string2) (string-append string1 string2)) 
      ((lambda (char-list) (apply string (map integer->char char-list))) (list 70 105 122 122)) 
      ((lambda (char-list) (apply string (map integer->char char-list))) (list 66 117 122 122)))
     ((lambda (condition true-part false-part) (if condition true-part false-part)) 
      ((lambda (divisor) (eq? (modulo number divisor) 0)) (char->integer #\u0005))
      ((lambda (char-list) (apply string (map integer->char char-list))) (list 66 117 122 122))
      ((lambda (condition true-part false-part) (if condition true-part false-part))
       ((lambda (divisor) (eq? (modulo number divisor) 0)) (char->integer #\u0003))
       ((lambda (char-list) (apply string (map integer->char char-list))) (list 70 105 122 122))
       ((lambda (num) (number->string num)) number))))))
  
(provide fizz)