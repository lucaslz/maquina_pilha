elemento(X, [X | _ ]).
elemento(X, [ _ | L ]) :- elemento(X, L).