#lang racket

(define (cont-frac n d k) 
    (cont-frac-iter n d k 0))

(define (cont-frac-iter n d i result)
    (define (next result)
      (/ (n i) (+ (d i) result)))
    (if (= i 0)
        result
        (cont-frac-iter n d (- i 1) (next result))))

(cont-frac  (lambda (i) 1.0)
            (lambda (i) 1.0)
            15)