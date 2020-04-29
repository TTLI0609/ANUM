
% methode gradient conjugue
preci = 0.001;
n = 1000;
m = 2000;
A = randn(n,m);
A = A * A';
b = randn(n,1);

x1 = A\b;  % resultat 

disp("La norme entre le resultat trouve par le gradient conjugue et x1 est :")
disp(norm(gradient_conj(A,b,preci)-x1));








