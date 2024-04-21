clc
clear
close all
x0=9.5;
x1=9.9899;
n=5;
for i=1:n
    x2=x1-fN(x1)/((fN(x1)-fN(x0))/(x1-x0));
    x0=x1;
    x1=x2;
end
x2