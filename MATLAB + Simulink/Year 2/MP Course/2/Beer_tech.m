[t,x]=ode23('Instalatie_bere',[0,1000],[0,0]');
plot(t,x(:,1),'r',t,x(:,2),'m');
xlabel('t');
ylabel('x(t)');
grid ON;
title('Suprapunere soluții cu dsolve & ode23');
hold on;
t=0:5:1000;
u=(exp(-t./200).*(2000.*exp(t./200)-2000))./2;
v=exp(-t./200).*(2000.*exp(t./200)-2000);
plot(t,u,'bo',t,v,'go');
hold off;
%Suprapunând cele 2 grafice, obținem o suprapunere aproape perfectă.
%Abaterile scad cu cât pasul t-ului este mai mic. 