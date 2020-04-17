function [lambda,x] = method_puissance(A,n)
lambda_0 = 1;
x_0 = ones(n,1);
lambda = 1;
x = ones(n,1);


while true 
    lambda_0 = lambda;
    x_0 = x;
    
    y = A * x_0;
    x = y / norm(y);
    lambda = x' * A * x;
    if lambda == lambda_0 && isequal(x_0,x)
        break
    end
        
end
 
end

