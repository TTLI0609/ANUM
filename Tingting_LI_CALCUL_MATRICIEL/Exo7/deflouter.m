function [F] = deflouter(A,B,G, p)
    [Ua,Sa,Va] = svd(A);
    [Ub,Sb,Vb] = svd(B);

    K = kron(Ua,Ub)*kron(Sa,Sb)*kron(Va,Vb);
    
    [Uk,Sk,Vk] = svd(K);
    Skinv = inv(Sk);
    Ukt = Uk';
      
    Up = Ukt(1:p,:);
    Sp = Skinv(1:p,1:p);
    Vp = Vk(:,1:p);
    g = G(:); %convertir en un vecteur 
    
    
    f = Vp * Sp * Up * g;
    
    m = size(G);
    m = m(1);
    
    % reconstruire la matrice F de taille m**2
    F = zeros(m);
    a=1;
    b=m;
    for i = 1:m
        F(:,i) = f(a:b);
        a = a+m;
        b = b+m;
    end

end

