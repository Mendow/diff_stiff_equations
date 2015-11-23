function [x1] = sichni( eps, x0, x1,x)

x2 = x1 - F(x,x1) * (x1-x0) / (F(x,x1)-F(x,x0));

while abs(x2-x1)>=eps
    x0=x1;
    x1=x2;
    x2=x1-F(x,x1)*(x1-x0)/(F(x,x1)-F(x,x0));
    
end
end
