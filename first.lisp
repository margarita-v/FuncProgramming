#!/usr/local/bin/sbcl --script
; Проверить, является ли указанное число корнем многочлена

; Функция, возвращающая значение многочлена a*x^2 + b*x + c
(defun polynomial(a b c x)
  (+ (+ (* (* x x) a) (* b x) ) c))

; Функция, проверяющая, является ли x корнем многочлена с коэффициентами a, b, c
; Если коэффициенты многочлена не заданы, будет взят многочлен x^2 - 2*x + 1
(defun issolve(x &optional (a 1) (b -2) (c 1))
  (if (equal (polynomial a b c x) 0)
    (write-line "YES")
    (write-line "NO")))

; Тестирование
(issolve 1)
(issolve 0)
(issolve 1 1 -5 4)
(issolve 5 1 -5 4)
