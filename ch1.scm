;; *Exercise 1.2:* Translate the following expression into prefix
;; form.

;; 5 + 4 + (2 - (3 - (6 + 4/5)))
;; -----------------------------
;;        3(6 - 2)(2 - 7)

(/ (+ 5
      4
      (- 2
         (- 3 (+ 6 (/ 4
                      5)))))
   (* 3
      (- 6 2)
      (- 2 7)))

;; *Exercise 1.3:* Define a procedure that takes three numbers as
;; arguments and returns the sum of the squares of the two larger
;; numbers.

(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x)
     (square y)))

(define (larger x y)
  (if (> x y)
      x
      y))

(define (first-two-largest x y z)
  (if (= x (larger x y))
      (list x (larger y z))
      (list y (larger x z))))

(define (sum-of-squares-first-two-largest x y z)
  (apply sum-of-squares (first-two-largest x y z)))
