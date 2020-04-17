function res = Integrale2(n)
    Inm = 12;
    m=100;
    res = Inm;
    for i=1:m
        res = (res +exp(-1)) / (n+m-i+1);
    end
end

