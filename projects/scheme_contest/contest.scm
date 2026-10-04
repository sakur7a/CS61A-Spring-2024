;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: Spiral Bloom
;;;
;;; Description:


(define colors (list 'cyan 'magenta 'yellow 'orange 'lime 'deepskyblue 'violet 'gold 'white))

;; 
(define (nth lst k)
  (if (= k 0)
      (car lst)
      (nth (cdr lst) (- k 1))))

;; 
(define (draw-spiral step angle count total)
  (if (= count 0)
      'done
      (begin

        (color (nth colors (modulo (- total count) (length colors))))
        (forward step)
        (left angle)
        (draw-spiral (+ step 0.9) angle (- count 1) total))))

(define (flower)
  (bgcolor 'black)
  (hideturtle)
  (speed 0)    
  (setposition 0 0)
  (pendown)
  (setheading 0)
  (draw-spiral 2 89 360 360)
  (showturtle))

(define (draw)
  (flower)
  (exitonclick))

; Please leave this last line alone. You may add additional procedures above
; this line.
(draw)