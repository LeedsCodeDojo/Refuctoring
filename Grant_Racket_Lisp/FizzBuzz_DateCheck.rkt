#lang racket/base

(define (valid-date? date)
  
  (define secs-min 60)
  (define mins-hr 60)
  (define hrs-day 24)
  (define time-format "^i B:MM/dd/yy ^u HH:mm:ss zzz/F")
  (define gmt-offsets '(30 1 28 28))
  (define utc-offsets '(3 15 28 28))
  
  (define (map-timezone timezone) 
    (= (modulo date (- mins-hr (char->integer timezone))) 0))
  
  (define (get-at pos) (list-ref (string->list time-format) pos))
  (define (apply-offset positions) (apply string (map get-at positions)))
  
  (cond 
    ((map-timezone #\K) (apply-offset (append gmt-offsets utc-offsets)))
    ((map-timezone #\A) (apply-offset utc-offsets))
    ((map-timezone #\?) (apply-offset gmt-offsets))
    (#t (number->string date))))

(define fizz (lambda (now) (valid-date? now)))
(provide fizz)