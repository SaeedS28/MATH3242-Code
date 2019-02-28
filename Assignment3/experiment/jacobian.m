function Y = jacobian(x)
  Y = zeros(2,2);
  
  % the jacobian of the two functions
  Y(1,1) = (2*x(1))/(x(1)*x(1)+x(2)*x(2))-x(2)*cos(x(1)*x(2));
  Y(1,2) = (2*x(2))/(x(1)*x(1)+x(2)*x(2))-x(1)*cos(x(1)*x(2));
  
  Y(2,1) = exp(x(1)-x(2))-x(2)*sin(x(1)*x(2));
  Y(2,2) = -1*exp(x(1)-x(2))-x(1)*sin(x(1)*x(2)); 