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