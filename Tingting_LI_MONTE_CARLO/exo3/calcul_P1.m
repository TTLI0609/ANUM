% n le nb d'échantillon 
% p = E((1-exp(G))+) où G -> N(0,1)
function [P] = calcul_P1(n)
P = 0; 
for i = 1:n
    tmp = 1 - exp(randn());
    if tmp < 0
        tmp = 0;
    end
    P = P + tmp;
end
P = P/n;
end


