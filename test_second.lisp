#!/usr/local/bin/sbcl --script
; Примеры для тестирования второго задания
(load "second.lisp")

;	A
;	|
;	B
;      /|\
;     C D E
(print-solve '(A (B (C) (D) (E))))

;	A
;	|
;	B
;	|
;	C
(print-solve '(A (B (C))))

;	A
;      / \
;     B   C
;	 /|\
;	D E F
(print-solve '(A (B) (C (D) (E) (F))))

;	A
;      / \
;     B   C
;	 / \
;	D   E
(print-solve '(A (B) (C (D) (E))))

;	A
;      / \
;     B   C
;	 / \
;	D   E
;	    |
;	    F
(print-solve '(A (B) (C (D) (E (F)))))

;	A
;      /|\
;     B C D
(print-solve '(A (B) (C) (D)))
