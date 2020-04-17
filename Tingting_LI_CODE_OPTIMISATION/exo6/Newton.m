function [x_coor,y_coor,erreur] = Newton(n, x0,x_m,g,H)

x = x0;
x_coor = zeros(1,n);
y_coor = zeros(1,n);
erreur = zeros(1,n);

for i=1:n
    erreur(i) = norm(x - x_m);
    x_coor(i) = x(1);
    y_coor(i) = x(2);
    x = x0 - (g(x0(1),x0(2))' /( H( x0(1),x0(2) ) )) ;
    x0 = [x_coor(i), x_coor(i)]; 
end

end

