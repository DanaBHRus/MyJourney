function [rez,pas]=Newton(x0,epsilon)
x1=x0-fN(x0)/fNderiv(x0);
pas=0;
while abs(x1-x0)>epsilon
    x0=x1;
    x1=x0-fN(x0)/fNderiv(x0);
    pas=pas+1;
end
rez=x1;