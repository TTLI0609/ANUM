% la fonction pour tester
f1 = @(x) (x(1)^2) + 2 * (x(2)^2);
alpha = 1;
x0= [-1 -1];
epsilon = 0.0001;

[xmin, ite] = method_gradient(f1, alpha, x0, epsilon);
xmin(1);
xmin(2);
ite;


% fonction de Rosenbrock
f2 = @(x)100*(x(2) - x(1)^2)^2 + (1 - x(1))^2;
alpha = 0.002;
x0= [-1 1.2];
epsilon = 0.0001;

[xmin, ite] = method_gradient(f2, alpha, x0, epsilon);
xmin(1);
xmin(2);
ite;


% Q3 methode de Wolfe
syms g(x1,x2);
g(x1,x2) = 100 * (x2 - x1*x1).^2 + (1 - x1).^2;

T= Wolfe(g, x0);
T

