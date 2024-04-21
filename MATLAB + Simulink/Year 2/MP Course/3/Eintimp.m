figure()
[t,x]=ode23('func',[0,2.5], [0,1.1313]);
E=[];
for i=1:length(t)
    E=[E x(i,:) * x(i,:)'];
end 
plot(t,E,'r');

hold on
title('Reprezentare E in timp');
xlabel('t'),ylabel('E');
grid on
[t,x]=ode23('func',[0,2.5], [0,1.25]);
E=[];
for i=1:length(t)
    E=[E x(i,:) * x(i,:)'];
end 
plot(t,E,'k');

[t,x]=ode23('func',[0,2.5], [1,0]);
E=[];
for i=1:length(t)
    E=[E x(i,:) * x(i,:)'];
end 
plot(t,E,'m');

[t,x]=ode23('func',[0,2.5], [1.25,0]);
E=[];
for i=1:length(t)
   E=[E x(i,:) * x(i,:)'];
end 
plot(t,E,'g');

[t,x]=ode23('func',[0,2.5], [0.5,0.5]);
E=[];
for i=1:length(t)
    E=[E x(i,:) * x(i,:)'];
end 
plot(t,E,'y');
hold off

%dacă P ar fi egal cu I, atunci V și E ar fi egale
