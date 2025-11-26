madre(rosa, maria).
madre(rosa, lupita).
madre(maria, hilda).
madre(maria, laura).
madre(lupita, rocio).
madre(lupita, gloria).

% REGLAS
abuela(A, B) :- madre(A, C), madre(C, B).

hermana(M, N) :- madre(P, M), madre(P, N), M \= N.

prima(X, Y) :- madre(M1, X), madre(M2, Y), hermana(M1, M2).

tia(R, S) :- madre(M, S), hermana(R, M).