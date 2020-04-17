function [xmin, ite] = method_gradient(f, alpha, x0, epsilon)
%Algorithme pas fixe du gradient
%f est la fiton de deux variables dont on cherche le minimum
%x0 est le point de depart vecteur colonne de deux dimensions
%gradf est le gradient de f
%pour la norme on uttlise la norme euclidienne donner par norm(X,2)
%ite est le nb d'itération utilisé
    k = 1;
    xk(:,k) = x0;
    while ( gt(norm(gradf(f, xk(:,k)),2), epsilon ))
        dk=-gradf(f, xk(:,k));
        xk(:,k+1)=xk(:,k) + alpha.*dk;
        k=k+1;
    end
    b=size(xk);
    xmin = xk(:,b(2));
    ite = k;

end


function g = gradf(f, x0)
% g: column vector containing the gradient of f at x0

% |delta(i)| is relative to |x0(i)|
g = zeros(length(x0),1);
delta = x0 / 1000;             
for i = 1 : length(x0)
    if x0(i) == 0
          % avoids delta(i) = 0 (**arbitrary value**)
        delta(i) = 1e-12;      
    end
     % recovers original x0
    u = x0;                    
    u(i) = x0(i) + delta(i);
     % f(x0(i-1), x0(i)+delta(i), x0(i+1), ...)
    f1 = feval ( f, u );     
    u(i) = x0(i) - delta(i);
     % f(x0(i-1), x0(i)-delta(i), x0(i+1), ...)
    f2 = feval ( f, u );     
   
     % partial derivatives in column vector
    g(i,1) = (f1 - f2) / (2 * delta(i)); 
end
end