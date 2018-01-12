% Name:         Tomer Gill
% I.D.:         318459450
% Group Number: 89-310-05
% U2 Username:  gilltom


% 1)
% getElement(L, N, R)
% R is the N-th element in L (a list)
getElement([], _, undefined).
getElement(_, N, undefined) :- N < 0.
getElement(L, N, undefined) :- length(L, LEN), N > LEN.
getElement([H|_], 0, H).
getElement([_|T], N, R) :- NN is N - 1, getElement(T, NN, R).


% 2)
% mulList(L, R)
% R is the multiplication of the elements of the list by one another, or if L is empty R is 1.
mulList([], 1).
mulList([H|T], R) :- mulList(T, RTAG), R is H * RTAG.


% 3)
% pairs(LS, R)
% R is a list of all the pairs that can be made from the elements of LS.
% Uses the auxiliary function pairElement(X, L, R) where R is a list of all the pairs (lists) 
% of X and an element from L.
pairElement(_, [], []).
pairElement(X, [H|T], [[X, H]|REST]) :- pairElement(X, T, REST).
pairs(L, []) :- length(L, LEN), LEN < 2.
pairs([H|T], R) :- pairElement(H, T, Chosen), pairs(T, Not_Chosen), append(Chosen,  Not_Chosen, R).


% 4)
% merge(FL, SL, L)
% L is the merging of FL and SL, one item from FL and then an item from SL.
merge(FS, [], FS).
merge([], LS, LS).
merge([H1|T1], [H2|T2], [H1|[H2|M]]) :- merge(T1, T2, M).
