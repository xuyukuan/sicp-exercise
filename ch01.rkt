#lang sicp

;;1.2
(/ (+ 5
      4
      (- 2
         (- 3
            (+ 6
               (/ 4
                  5)))))
   (* 3
      (- 6
         2)
      (- 2
         7)))

;;1.3
(define (sum-top-2 a b c)
  (cond ((and (> a c)
              (> b c))
         (+ a b))
        ((and (> a b)
              (> c b))
         (+ a c))
        ((and (> c a)
              (> b a))
         (+ c b))))

;;1.4
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))
;;(test 0 (p))
;;Applicative order vs Normal order
;;Applicative order - (p) dead loop
;;Normal order - return 0