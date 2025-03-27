padre(abraham, [herbert, homero]).
padre(clancy, [marge, patty, selma]).
padre(homero, [bart, lisa, maggie]).

madre(mona, [homero]).
madre(jacqueline, [marge, patty, selma]).
madre(marge, [bart, lisa, maggie]).
madre(selma, [ling]).

es_mujer([mona, jacqueline, marge, patty, selma, lisa, maggie, ling]).

es_hombre([abraham, clancy, herbert, homero, bart]).

padre_de(X, Y):-
      es_hombre(Hombres), member(X, Hombres),
      padre(X, H1), member(Y, H1).

madre_de(X, Y):-
      es_mujer(Mujeres), member(X, Mujeres),
      madre(X, H1), member(Y, H1).

abuelo_de(X, Y) :-
    es_hombre(Hombres), member(X, Hombres),
    padre_de(X, Z),
    padre_de(Z, Y),
    !. 

abuela_de(X, Y):-
      es_mujer(Mujeres), member(X, Mujeres),
      padre_de(X, Z),
      padre_de(Z, Y),
      !.

hermano_de(X, Y) :-
    X \= Y,
    es_hombre(Hombres), member(X, Hombres),
    padre_de(P, X), padre_de(P, Y),
    !.

hermana_de(X, Y) :-
    X \= Y,
    es_mujer(Mujer), member(X, Mujer),
    padre_de(P, X), padre_de(P, Y),
    !.

    
