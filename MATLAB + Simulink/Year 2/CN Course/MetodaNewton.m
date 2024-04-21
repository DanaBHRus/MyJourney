clc
clear
close all
x0=9.5;
n=10;
for i=1:n
    x1=x0-fN(x0)/fNderiv(x0);
    x0=x1;
end
x1