A = [1 2 3
2 4 7
-1 0 5];

tic;
calculj(A ,3 ,3 );
toc

tic; 
norm(A);
toc

function res = calculj(A ,m ,n )
    res = zeros(m,1);
    for i=1:m
        for j=1:n
            res(i) = res(i) + abs(A(j,i));
        end
    end
end
    
    