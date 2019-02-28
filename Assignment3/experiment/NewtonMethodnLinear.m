F = @functionEquation;
J = @jacobian;

% The procedure from the textbook (page 653)
x0 = [-50;50] % initial guess
A = J(x0);
z0 = -F(x0);
y0 = linsolve(A,z0);
x1 = x0 + y0;
norm(y0,2);

for j = 1:15    
    x0 = x1;
    A = J(x0);
    z0 = -F(x0);
    y0 = linsolve(A,z0);
    x1 = x0 + y0;
    err = norm(y0,2);
    
    fprintf(' %3d %15.10f %15.10f %15.10f \n',j,x1(1),x1(2),err);
    if err < 0.00000001 % error bound
        break;
    end
end