
lista([])
lista([Car|Cdr]):-lista(Cdr).

car(Car,[Car|_]).
cdr(Cdr,[_,Cdr]).

miembro(X,[x|_]):-!.
miembro(X,[_|Cdr]):-miembro(X,Cdr).

ultimo([X],X]).
ultimo([_|Cdr],X):-ultimo(Cdr,X).

concatenar([],L,L).
concatenar([Car|Cdr],L,[Car|R]):-concatenar(Cdr,L,R).

invertir([],[]).
invertir([Car|Cdr],Inversa) :- invertir(Cdr,CdrInverso),
			       concatenar(CdrInverso,[Car],Inversa).

igual([],[]). 
igual([Car|Cdr],[Car|Cdr]).
