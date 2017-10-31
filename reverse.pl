% Выполнить симметричный переворот списка

% Входные параметры вспомогательной функции:
% исходный список, буфер, результат.
% Изначально буфер пуст, и по мере обработки в его начало добавляются
% элементы исходного списка.

reverse(List, Result) :- reverse(List, [], Result).
reverse([], Buffer, Buffer).
reverse([Head | Tail], Buffer, Result) :-
	reverse(Tail, [Head | Buffer], Result).
