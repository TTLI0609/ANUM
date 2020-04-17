load defloutage.mat  %[A,B,G] 


s = 50;
A = A(1:s,1:s);
B = B(1:s,1:s);
G = G(1:s,1:s);
p = 30;

F = deflouter(A,B,G, p);

imagesc(F);
colormap gray;