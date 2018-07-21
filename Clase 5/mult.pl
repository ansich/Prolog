mult(0,X,0) :- nat(X).
mult(s(0),X,X) :- nat(X).
mult(s(X),Y,R) :- mult(X,Y,Z), suma(Z,Y,R).


