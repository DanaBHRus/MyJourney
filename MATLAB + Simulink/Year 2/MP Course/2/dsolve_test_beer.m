syms x1 x2
solutie=dsolve('Dx1=5-0.01*x1+0.0025*x2','Dx2=10+0.01*x1-0.01*x2','x1(0)=0','x2(0)=0');
X1=solutie.x1
X2=solutie.x2
t=0:5:1000;
u=(exp(-t./200).*(2000.*exp(t./200)-2000))./2;
v=exp(-t./200).*(2000.*exp(t./200)-2000);
plot(t,u,'b',t,v,'g');
title('x1(t) & x2(t) folosind dsolve')
xlabel('t'); ylabel('x1(t) cu verde/x2(t) cu albastru');
grid on
