avo(X, Y) :- pai(X, Z), pai(Z, Y).
avo(X, Y) :- pai(X, Z), mae(Z, Y).

pai(carlos, joao).
pai(joao, jose).

mae(maria, joao).
