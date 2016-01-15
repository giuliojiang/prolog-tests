/*
==========================
[1] ACYCLIC DIRECTED GRAPH
==========================
*/

arc(a, b).
arc(b, c).
arc(b, d).
arc(c, f).
arc(d, f).
arc(c, e).
arc(f, e).

path(X, Z) :-
    arc(X, Z).
path(X, Z) :-
    arc(X, Y),
    path(Y, Z).

/*
=================
[2] PEANO NUMBERS
=================
*/

plus(0, 0, 0).
plus(X, 0, X).
plus(0, Y, Y).
plus(s(X), Y, s(Z)) :-
    plus(X, Y, Z).

odd(s(0)).
odd(s(s(N))) :-
    odd(N).

/*
==============
[3] ONES_ZEROS
==============
*/

ones_zeros([]).
ones_zeros([0|Xs]) :-
    ones_zeros(Xs).
ones_zeros([1|Xs]) :-
    ones_zeros(Xs).

/*
===========
[4] HASDUPS
===========
*/

hasdups([Head|Tail]) :-
    member(Head, Tail).
hasdups([_|Tail]) :-
    hasdups(Tail).

/*
========
[5] PROD
========
*/

prod([], 1).
prod([Head|Tail], Result) :-
    prod(Tail, Temp),
    Result is Head*Temp.

/*
============
[6] CONTAINS
============
*/
    
contains2(Xs, Ys, M) :-
    append(First, Last, Xs),
    append(Ys, _End, Last),
    length(First, N),
    M is N + 1.
    
/*
============
[7] ADD_POLY
============
*/

add_poly([],[],[]).
add_poly([],Y,Y).
add_poly(X,[],X).
add_poly([(Xa,Xb)|Xs], [(Ya,Yb)|Ys], [(Za,Xb)|Zs]) :-
    Xb = Yb,
    add_poly(Xs, Ys, Zs),
    Za is Xa + Ya,
    Za \= 0.
add_poly([(Xa,Xb)|Xs], [(Ya,Yb)|Ys], [(Xa,Xb)|Zs]) :-
    Xb > Yb,
    add_poly(Xs, [(Ya,Yb)|Ys], Zs),
    Xa \= 0.
add_poly([(Xa,Xb)|Xs], [(Ya,Yb)|Ys], [(Ya,Yb)|Zs]) :-
    Xb < Yb,
    add_poly([(Xa,Xb)|Xs], Ys, Zs),
    Ya \= 0.