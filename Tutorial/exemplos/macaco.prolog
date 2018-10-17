acao(pegar,st(B,emCima,B,B,nao), st(B,emCima,B,B,sim)).
acao(subir,st(X,chao,X,B,H),st(X,emCima,X,B,H)).
acao(empurrar(O,D),st(O,chao,O,B,H),st(D,chao,D,B,H)).
acao(andar(O,D),st(O,chao,X,N,H),
st(D,chao,X,N,H)).


canGet(st(X,emCima,X,X,sim),[]).
canGet(st(X,E,C,B,nao),[A|XS]) :- 
 acao(A,st(X,E,C,B,nao),S1),
 canGet(S1,XS).
 
elem(X,[X|_]).
elem(X,[_|XS]) :- elem(X,XS).
f :- print('x'),nl. 

pl(XS) :- elem(X,XS),print(X),nl,fail.

pl1 :- read(X), print('Digitaste '),nl,print(X),X.

fileOut :- tell('saida.txt'),
           print(a),
           nl,
           print(b),
           nl,
           print(c),
           told,
           print('Done.').

fileIn(X,Y,Z) :- see('saida.txt'),
           read(X),
           
           seen,
           print('Done.').
