#lang racket/base

; Refuctorings Used:

; Unnecessary Lambdas
; Disguise Data
; Inline Method
; Nest Deeply
; Reverse If

(define fizz 
  (lambda 
    (number)
    ((lambda (condition false-part true-part) (if condition true-part false-part))
     ((lambda (divisor) (eq? (modulo number divisor) 0)) (char->integer #\u000F))
     ((lambda (condition false-part true-part) (if condition true-part false-part)) 
      ((lambda (divisor) (eq? (modulo number divisor) 0)) (char->integer #\u0005))
      ((lambda (condition false-part true-part) (if condition true-part false-part))
       ((lambda (divisor) (eq? (modulo number divisor) 0)) (char->integer #\u0003))(number->string number)
       ((lambda (char-list) (apply string (map integer->char char-list))) (list 70 105 122 122)))
      ((lambda (char-list) (apply string (map integer->char char-list))) (list 66 117 122 122)))
     ((lambda (string1 string2) (string-append string1 string2)) 
      ((lambda (char-list) (apply string (map integer->char char-list))) (list 70 105 122 122)) 
      ((lambda (char-list) (apply string (map integer->char char-list))) (list 66 117 122 122))))))
  
(provide fizz)