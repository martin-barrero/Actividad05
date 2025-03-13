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

padre_de(X, Y):-
      es_mujer(Mujeres), member(X, Mujeres),
      madre(X, H1), member(Y, H1).
