function V = approx_volume_boule(n, d)
    a = 1.0;
    %tirage selon une loi normale centrée réduite en [-a, a]
    X = 2*a*rand(n,d) - a;
    %calcul de la norme
    X2 = X.^2;
    r = sqrt(sum(X2(:,:),2));
    %logicals pour garder seulement les r qui respectent la condition
    in = r<=a;
    %calcul du volume
    V = (2*a)^d*sum(in)/n;
end
        
    