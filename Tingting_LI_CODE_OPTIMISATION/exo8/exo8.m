% la fonction de Rosenbrock
f = @(x)100*(x(2) - x(1)^2)^2 + (1 - x(1))^2;
x0 = [-1,-2];

%utilisation 
x = [0 0];
disp(f(x));


%Q2 Algo Nelder-Meade
precision = 0.001;
nelder_mead(f,x0,precision);

% Q3 
fminsearch(f,x0);

