/*

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