father(a, b).
father(b, c).

% More facts
father(b, d).

father(a, x).
father(x, y).

father(a, b1).
father(b1, c1).

% Rules
grandfather(X, Z):- father(X, Y), father(Y, Z).
