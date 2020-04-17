function res = Integrale3(n,nm)
    if n == nm 
        res = 12;
    else 
        res = (Integrale3(n+1,nm) + exp(-1)) / (n+1);
    end
   
end

