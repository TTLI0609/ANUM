function res = Integrale(n)
    res = 1 - exp(-1);
    disp(res);
    for i=1:n
        res = -exp(-1) + (i* res);
        disp(res);
    end
end

