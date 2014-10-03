% This buffer is for notes you don't want to save.
% If you want to create a file, visit that file with C-x C-f,
% then enter the text in that file's own buffer.

father_of( james, hj).
father_of( james, yj).
father_of( james, a1).
father_of( james, a2).


run :- findall( B, father_of( james, B), Bs), write( Bs).

run_each :- findall( B, father_of( james, B), Bs), print_each( 2, Bs).

print_each( 0, _) :- !.
print_each(_, []).
print_each(N, [H|T]) :- write( H), nl, N1 is N - 1, print_each(N1, T).
