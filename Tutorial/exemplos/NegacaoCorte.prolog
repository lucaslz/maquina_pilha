 
father(X,Y) :- !,parent(X,Y),male(X).
father(santa,_).
parent(f,b).
parent(a,b).
parent(g,b).
parent(b,c).
parent(d,e).
male(a).
male(d).
female(f).




min(X,Y,X) :- X < Y, !.
min(X,Y,Y) :- X >= Y.

onTop(ground,a).
onTop(a,b).
onTop(b,c).
onTop(ground,d).
onTop(d,e).
onTop(ground,f).

above(X,Y) :- onTop(X,Y).
above(X,Y) :- onTop(X,Z),above(Z,Y).

supreme(X) :- neg(above(X,_)).

neg(X) :- X,!,fail.
neg(_).

emcima(Y) :- neg(supreme(Y)).
