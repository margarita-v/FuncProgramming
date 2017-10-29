#!/usr/local/bin/sbcl --script
; Проверить, является ли дерево бинарным

(defun isbinary (l)
  (cond ((or (null l) (atom l)) t)
  	; Количество потомков узла должно быть <= 2
	((> (list-length (cdr l)) 2) nil)
  	; Вызываем функцию рекурсивно для левого и правого поддерева
	(t (and (isbinary (cadr l)) (isbinary (caddr l))))))

(print(isbinary '(A (B (C) (D) (E)))))
(print(isbinary '(A (B (C)))))
(print(isbinary '(A (B))))
(print(isbinary '(A (B) (C (D) (E) (F)))))
(print(isbinary '(A (B) (C (D) (E)))))
(print(isbinary '(A (B) (C (D) (E (F))))))
(print(isbinary '(A (B) (C) (D))))
