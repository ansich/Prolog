conjunto([]).
conjunto([Car|Cdr]) :- miembro(Car,Cdr),!,fail.
conjunto([_|Cdr]) :- conjunto(Cdr).


inclusion([],_).
inclusion([Car|Cdr],C):-miembro(Car,C),inclusion(Cdr,C).

#si la cond se cumple el corte se ejecuta
#si ! se ejecta no se va a la siguiente cláusula

union([],C,C).
union([Car|Cdr], C, Union):-miembro(Car,C), !, union(Cdr,C,Union).
union([Car|Cdr], C, [Car|Union]):-union(Cdr,C,Union).

interseccion([],_,[]).
interseccion([Car|Cdr], C, [Car|Int]):-miembro(Car,C), !, interseccion(Cdr,C,Int).
interseccion([_|Cdr], C, Int):-interseccion(Cdr, C, Int).
