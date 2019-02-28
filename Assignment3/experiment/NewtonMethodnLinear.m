F = @functionEquation;
J = @jacobian;

x0 = [3;3];
A = J(x0);
z0 = -F(x0);
y0 = linsolve(A,z0);
x1 = x0 + y0;
norm(y0,2);

for j = 1:300
    
    x0 = x1;
    A = J(x0);
    z0 = -F(x0);
    y0 = linsolve(A,z0);
    x1 = x0 + y0;
    err = norm(y0,2);
    
    fprintf(' %3d %15.10f %15.10f %15.10f \n',j,x1(1),x1(2),err);
    if err < 0.000001
        break;
    end
end