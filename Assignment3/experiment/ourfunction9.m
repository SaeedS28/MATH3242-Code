function Y = ourfunction9(x)
  Y = zeros(3,1);
  Y(1) = 3*x(1)-cos(x(2)*x(3))-1/2;
  Y(2) = x(1)^2-81*(x(2)+0.1)^2+sin(x(3))+1.06;
  Y(3) = exp(-x(1)*x(2))+20*x(3)+(10*pi-3)/3;
 