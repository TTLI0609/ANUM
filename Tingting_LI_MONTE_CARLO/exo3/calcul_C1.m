% n le nb d'échantillon 
% C = E((exp(G)-1)+) où G -> N(0,1)
function [C] = calcul_C1(n)
C = 0; 
for i = 1:n
    tmp = exp(randn()) -1;
    if tmp < 0
        tmp = 0;
    end
    C = C + tmp;
end
C = C/n;
end

