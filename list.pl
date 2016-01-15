/*
[1] ALL_MEMBERS
*/

all_members([], _Ys).
all_members([X|Xs], Ys) :-
    member(X, Ys),
    all_members(Xs, Ys).
    
/*
[2] PAIRS
*/

pairs([],[]).
pairs([X|Xs], [(Prev,Succ)|Zs]) :-
    pairs(Xs, Zs),
    Prev is X-1,
    Succ is X+1.