clc
clear
close all
x=0:0.05:1;
figure(1)
P30=(1-x).^3;
P31=3*(1-x).^2.*x;
P32=3*(1-x).*x.^2;
P33=x.^3;
plot(x,P30,'Color','r','LineWidth',2)
hold on
plot(x,P31,'Color','b','LineWidth',2)
plot(x,P32,'Color','k','LineWidth',2)
plot(x,P33,'Color','c','LineWidth',2)

Px=[0,1,1,0];
Py=[0,0,1,1];

Cx=Px(1)*P30+Px(2)*P31+Px(3)*P32+Px(4)*P33;
Cy=Py(1)*P30+Py(2)*P31+Py(3)*P32+Py(4)*P33;

figure(2)
hold on
box on
plot(Px,Py,'b*');
plot(Cx,Cy,'Color','k','LineWidth',2);
plot(Px,Py);
