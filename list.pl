/*
[1] ALL_MEMBERS ..............................................................
*/

all_members([], _Ys).
all_members([X|Xs], Ys) :-
    member(X, Ys),
    all_members(Xs, Ys).
    
/*
[2] PAIRS ....................................................................
*/

pairs([],[]).
pairs([X|Xs], [(Prev,Succ)|Zs]) :-
    pairs(Xs, Zs),
    Prev is X-1,
    Succ is X+1.
    
/*
[3] ARBPAIRS .................................................................
*/

arbpairs([],[]).
arbpairs([X|Xs], [(X,Y)|Ys]) :-
    arbpairs(Xs, Ys),
    Y is 2*X.
arbpairs([X|Xs], [(X,X)|Ys]) :-
    arbpairs(Xs, Ys).