function [A] = constuire_A(U,G)
n = length(U);  %nb de pages web qu'on peut atteindre
p = 0.85;  
sigma = (1-p) / n;

A = zeros(n);
for i = 1:n
    for j=1:n
        cj = sum(G(:,j));
        if cj == 0
            A(i,j) = 1/n;
        else
            A(i,j) = ((p * G(i,j)) / cj ) + sigma;
        end
        
    end
end

end

