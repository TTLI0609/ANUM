function x = gradient_conj(A,b,preci)
    x = b;
    r = b - A*x;
    if norm(r) < preci
        return
    end
    y = -r;
    z = A*y;
    s = y'*z;
    t = (r'*y)/s;
    x = x + t*y;
  
    cpt = 0;
    for k = 1:numel(b)
       r = r - t*z;
       if( norm(r) < preci )
            return;
       end
       B = (r'*z)/s;
       y = -r + B*y;
       z = A*y;
       s = y'*z;
       t = (r'*y)/s;
       x = x + t*y;
       cpt = cpt+1;
    end
 end
