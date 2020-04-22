N = input('Le nombre d ecahntillon ?\n') ;
n=0;
for k = 1:N
    x = rand() ;
    y = rand();
    if (x^2 + y^2) < 1
        n=n+1;
    end     
end 
z=(4*n);
pi=z/N;
disp('Pi est environ égal à ');
disp(pi)