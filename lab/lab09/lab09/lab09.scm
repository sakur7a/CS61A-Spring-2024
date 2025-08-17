(define (over-or-under num1 num2) 
  (if (> num1 num2) (1)(if (= num1 num2) (0)(-1)))
  )

(define (make-adder num) 
  (lambda (x) (+ num x)
      )
        )

(define (composed f g) 
  (lambda (x) (f (g x))
      )
        )

(define (repeat f n)
  (if ( = n 1 ) f ( composed f (repeat f (- n 1)) ))

        )

(define (max a b)
  (if (> a b)
      a
      b))

(define (min a b)
  (if (> a b)
      b
      a))

(define (gcd a b) 
  (if ( = b 0 )  a   (gcd b ( modulo a b ))
      ))
