#!/usr/local/bin/sbcl --script
; Проверить, является ли указанное число корнем многочлена

; Функция, возвращающая значение многочлена a*x^2 + b*x + c
(defun polynomial(a b c x)
  (+ (+ (* (* x x) a) (* b x) ) c))

; Функция, проверяющая, является ли x корнем многочлена с коэффициентами a, b, c
(defun issolve(a b c x)
  (return-from issolve (equal (polynomial a b c x) 0)))

; Функция, возвращающая строковое представление многочлена
(defun print-polynom(a b c)
  ; Вложенная функция для печати многочлена при a = 1
  (defun print-poly-simple(b c)
    (format nil "x^2 ~@d*x ~@d" b c))
  (cond 
    ((equal a 1) (format nil (print-poly-simple b c)))
    ((>= a 0) (format nil "~d*~a" a (print-poly-simple b c)))
    (t (format nil "(~@d)*~a" a (print-poly-simple b c)))))

; Функция печати решения задачи
; Если коэффициенты многочлена не заданы, будет взят многочлен x^2 - 2*x + 1
;(defun issolve(x &optional (a 1) (b -2) (c 1))
(defun print-solve(x &optional (a 1) (b -2) (c 1))
  (format t "~%Число ~d ~a корнем многочлена ~a~%"
	  x
	  (if (equal (issolve a b c x) t)
	    (format nil "является") (format nil "не является"))
	  (print-polynom a b c)))

; Тестирование
(print-solve 1)
(print-solve 0)
(print-solve 1 1 -5 4)
(print-solve 5 1 -5 4)
(print-solve 1 0 -2 2)
