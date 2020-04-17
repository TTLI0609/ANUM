function xk = Gradient(f, xk, a)
    F = gradient(f);
    while norm(F(xk(1), xk(2)), 1) > 0.0001
        xk = xk - a * F(xk(1), xk(2));
    end
end