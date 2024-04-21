clc
clear
close all
x=0:0.01:1;
y=Bernstein(x,4);
figure(1)
plot(x,y,'Color','r','LineWidth',2)