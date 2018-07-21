
suma(0,X,X):-nat(X).
suma(s(X),Y,s(Z)):-suma(X,Y,Z).

