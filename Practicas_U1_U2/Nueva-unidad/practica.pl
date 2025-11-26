pais(usa).
pais(canada).
pais(mexico).
capital(usa, washington).
capital(canada, ottawa).
capital(mexico, cd_mexico).
capital(francia, paris).
capital(china, pekin).
capital(australia, sidney).
capital(nigeria, abuya).
continente(asia, china).
continente(europa, francia).
continente(oceania, australia).
continente(america, usa).
continente(america, mexico).
continente(america, canada).
continente(africa, nigeria).


%regla
continente_cd(A,C):-
continente(A,B),
capital(B,C).