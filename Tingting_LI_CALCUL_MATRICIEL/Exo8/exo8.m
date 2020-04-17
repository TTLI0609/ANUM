%[U,G] = surfer('http://www.sorbonne-universite.fr/',15);

n = length(U);  %nb de pages web qu'on peut atteindre

A = constuire_A(U,G);

[lambda,x] = method_puissance(A,n);

[B, index] = sort(x,'descend');

rank = U(index);
disp(rank)
