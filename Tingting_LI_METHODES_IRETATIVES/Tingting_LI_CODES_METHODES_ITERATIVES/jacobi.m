function [x,ite] = jacobi(A,y,x0,preci)
itemax = 5000;
n = length(y);
x = x0; 
for j=1:itemax
    for i=1:n
        x(i) = (y(i)-A(i,[1:i-1,i+1:n])*x0([1:i-1,i+1:n]))/A(i,i);
    end
    if norm(x-x0)<preci
        ite = j;
        break;
    end
    x0 =x;
end
