exp(X,0,s(0)) :- nat(x).
exp(x,s(0),X) :- nat(X).
exp(X,s(Y),R) :- exp(X,Y,Z), mult(Z,X,R).
