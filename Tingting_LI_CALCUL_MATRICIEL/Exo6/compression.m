function [] = compression(k)
% k le taux de compression
load clown.mat;
[U,S,V] = svd(X);
Vt = V';
Uk = U(:,1:k);
Sk = S(1:k,1:k);
Vk = Vt(1:k,:);
Xk = Uk*Sk*Vk;
imagesc(Xk);
colormap gray;

end

