% ARBOL GENEALOGICO FAMILIAR
% Definición de parentescos básicos de la familia.
% padre(A,B) significa que B es el padre de A.
padre(juan, alberto).
padre(luis, alberto).
padre(alberto, leoncio).
padre(geronimo, leoncio).
padre(luisa, geronimo).

% Regla para hermanos:
% hermano(A,B) significa que A es hermano de B si ambos tienen el mismo padre
hermano(A, B) :-
    padre(A, P),
    padre(B, P),
    A \= B.

% Regla para nietos:
% nieto(A,B) significa que A es nieto de B si B es padre del padre de A
nieto(A, B) :-
    padre(A, X),
    padre(X, B).