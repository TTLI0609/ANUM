% C = exp(1/2)*phi(1) - 1/2
function [C] = calcul_C2()
func = @(x) exp(-(x.^2)/2);
phi = @(x) (1/sqrt(2*pi)) * integral(func, -Inf, x);

C = (exp(1/2)*phi(1)) - 1/2;
end

