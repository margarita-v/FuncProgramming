; Проверить, является ли дерево бинарным
(defun isbinary (tree)
  (cond ((or (null tree) (atom tree)) t)
  	; Количество потомков узла должно быть <= 2
	((> (list-length (cdr tree)) 2) nil)
  	; Вызываем функцию рекурсивно для левого и правого поддерева
	(t (and (isbinary (cadr tree)) (isbinary (caddr tree))))))

; Функция печати решения задачи
(defun print-solve(tree)
  (format t "~%Дерево ~a ~a бинарным~%"
	  tree
	  (if (isbinary tree) 
	    (format nil "является")
	    (format nil "не является"))))
