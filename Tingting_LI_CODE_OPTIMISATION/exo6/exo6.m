% la fonction de Rosenbrock
syms f(x1,x2)
f(x1,x2) = 100 * ((x2 - (x1^2))^2)  + (1 - x1)^2;

% g gradiant de f
g = gradient(f,[x1,x2]);

% H hessienne de f
H = hessian(f,[x1,x2]);

%minimun local de f
x_m = [1,1];

%Méthode de Newton
n = 5;
x0 = [-1,-2];
[x_coor,y_coor,erreur] = Newton(n, x0,x_m,g,H);
ezcontour(f,[-1.5;2;-3;3]);
hold on
plot(x_coor,y_coor,'r*')

