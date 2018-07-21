cartesiano([],Conjunto,[]).
cartesiano([Car|Cdr],Conjunto,Resultado) :- linea(Car,Conjunto,Linea), cartesiano(Cdr,Conjunto,Resto), concatenar(Linea,Resto,Resultado).

linea(Elemento,[],[]).
linea(Elemento,[Car|Cdr],[[Elemento,Car]|Resto]) :- linea(Elemento,Cdr,Resto).
