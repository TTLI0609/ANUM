% P = 1/2 - exp(1/2)*phi(-1) 
function [P] = calcul_P2()
func = @(x) exp(-(x.^2)/2);
phi = @(x) (1/sqrt(2*pi)) * integral(func, -Inf, x);

P = (1/2) -(exp(1/2)*phi(-1))  ;
end

