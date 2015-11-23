clc;
clear all;

global a;
global b;
global eps;
global n;
global h;
global x y ;



eps = 0.001;

a=0;
b=1/100;

n=1000;

h=(b-a)/n;

x=a;
y=sichni(eps,a,b,a);


for i=2:n
    
    xp(i)=x;
    yp(i)=y;
    y=sichni(eps,yp(i-1),yp(i),xp(i));
    x=x+h;
    
    
end
plot(xp,yp,'r');