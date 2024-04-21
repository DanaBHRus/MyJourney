x=0:0.05:1;
figure(1)
y=x1(x);
plot(x,y,'Color','r','LineWidth',2)
hold on
y=x2(x);
plot(x,y,'Color','b','LineWidth',2)
y=x3(x);
plot(x,y,'Color','k','LineWidth',2)
hold off
Px=[0,0,1];
Py=[0,1,0];

y0=(1-x).^2;
y1=2.*x.*(1-x);
y2=x.^2;

Cx=Px(1)*y0+Px(2)*y1+Px(3)*y2;
Cy=Py(1)*y0+Py(2)*y1+Py(3)*y2;

figure(2)
hold on
box on
plot(Px,Py,'b*');
plot(Cx,Cy,'Color','k','LineWidth',2);
plot(Px,Py);