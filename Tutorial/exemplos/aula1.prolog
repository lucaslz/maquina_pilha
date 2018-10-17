 
isList(v).
isList(l(_,L)) :- isList(L).

head(l(H,_),H).

last(l(H,v),H).
last(l(_,L),E) :- last(L,E).

rev1([],L,L).
rev1([X|XS],L,R) :- rev1(XS,[X|L],R). 

rev(L,R) :- rev1(L,[],R).

palin(L) :- rev(L,L).

elem(X,[X|_]).
elem(E,[_|XS]) :- elem(E,XS).

cat([],YS,YS).
cat([X|XS],YS,[X|ZS]) :- cat(XS,YS,ZS).

length1([],0).
length1([_|XS],N) :- length1(XS,Z),
N is Z + 1.

isTree(nil).
isTree(tree(_,E,D)) :- 
  isTree(E),
  isTree(D).
  
theight(nil,0).
theight(tree(_,E,D),N) :-
theight(E,He),
theight(D,Hd),
((He > Hd, N is He +1);
 (He =< Hd, N is Hd + 1)).
 
flat(nil,[]).
flat(tree(R,E,D),XS) :- 
flat(E,YS),
flat(D,ZS),
cat(YS,[R|ZS],XS).
