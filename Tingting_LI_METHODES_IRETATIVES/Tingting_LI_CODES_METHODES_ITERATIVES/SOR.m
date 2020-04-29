function [x,ite] = SOR(A,b,x0,w,preci) % w ]0,2[
itemax= 1000;
n = length(b);
x = x0;
for j=1:itemax
    for i=1:n
        x(i) = ( w/A(i,i) ) * (b(i)-A(i,1:i-1)*x(1:i-1)-A(i,i+1:n)*x(i+1:n)) + (1-w)*x(i); 
    end 
    if norm(x-x0)<preci
        ite = j;
        break;
    end
    x0 =x;
end
end



