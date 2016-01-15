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
    
/*
[4] REPLACE_WRAP .............................................................
*/

replace_wrap(Xs, Out) :-
    findall(wrap(X), member(X, Xs), Out).
    
/*
[5] EVEN_MEMBERS .............................................................
*/

even_members([],[]).
even_members([_X],[]).
even_members([_Xa,Xb|Xs], [Xb|Zs]) :-
    even_members(Xs, Zs).

/*
[6] ODD_EVEN_MEMBERS
*/

odd_even_members([],[],[]).
odd_even_members([X],[X],[]).
odd_even_members([Xo,Xe|Xs], [Xo|Odds], [Xe|Evens]) :-
    odd_even_members(Xs, Odds, Evens).