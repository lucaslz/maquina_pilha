igual([], []).
igual([X | L1], [X | L2]) :- igual(L1, L2).