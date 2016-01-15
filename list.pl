/*
[1] ALL_MEMBERS
*/

all_members([], _Ys).
all_members([X|Xs], Ys) :-
    member(X, Ys),
    all_members(Xs, Ys).