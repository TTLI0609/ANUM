%le volume d'une boule est 4/3 * pi * rayon^3
d = 4;
n = 100000;
res = approx_volume_boule(n, d);
disp("Avec d = 4 et n = 100000, le volume d'une boule est environ :")
disp(res);