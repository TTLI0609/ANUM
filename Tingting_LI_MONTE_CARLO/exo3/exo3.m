% Question 1

n = 100000;
moy = zeros (50,1);
for i=1:50
    moy(i)=calcul_C1(n);
end
C = mean(moy);
disp("C vaut ");
disp(C);

for i=1:50
    moy(i)=calcul_P1(n);
end
P = mean(moy);
disp("P vaut ");
disp(P)



% Question 2
disp("C vaut ");
disp(calcul_C2());
disp("P vaut ");
disp(calcul_P2());