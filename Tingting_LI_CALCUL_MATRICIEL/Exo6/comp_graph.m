function [] = comp_graph()
% En faisant varier le taux de compression k
load clown.mat;
[U,S,V] = svd(X);
Vt = V';

res = zeros(199,1);
for k=1:199
    Uk = U(:,1:k);
    Sk = S(1:k,1:k);
    Vk = Vt(1:k,:);
    Xk = Uk*Sk*Vk;
    
    dif = X - Xk;
    res(k) = norm(dif);
end
ktab= linspace (1, 199, 199);


plot(ktab, res);
xlabel("k")
ylabel("norme")
disp(res);
end

