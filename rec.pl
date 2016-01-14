/*
==========================
[1] ACYCLIC DIRECTED GRAPH
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
*/

plus(0, 0, 0).
plus(X, 0, X).
plus(0, Y, Y).
plus(s(X), Y, s(Z)) :-
    plus(X, Y, Z).

odd(s(0)).
odd(s(s(N))) :-
    odd(N).