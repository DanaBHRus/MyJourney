[t,x]=ode23('func',[0,0.05], [3,1]);
P=[1 0;0 1.5];
V=[];
for i=1:length(t)
    V=[V x(i,:) * P * x(i,:)'];
end 
plot(t,V,'b');

hold on
title('Reprezentare V in timp');
xlabel('t'),ylabel('V');
grid on
[t,x]=ode23('func',[0,1.2], [2.1,0]);
P=[1 0;0 1.5];
V=[];
for i=1:length(t)
    V=[V x(i,:) * P * x(i,:)'];
end 
plot(t,V,'c');

[t,x]=ode23('func',[0,2.5], [0,1.1313]);
P=[1 0;0 1.5];
V=[];
for i=1:length(t)
    V=[V x(i,:) * P * x(i,:)'];
end 
plot(t,V,'r');

[t,x]=ode23('func',[0,2.5], [0,1.25]);
P=[1 0;0 1.5];
V=[];
for i=1:length(t)
    V=[V x(i,:) * P * x(i,:)'];
end 
plot(t,V,'k');

[t,x]=ode23('func',[0,2.5], [1,0]);
P=[1 0;0 1.5];
V=[];
for i=1:length(t)
    V=[V x(i,:) * P * x(i,:)'];
end 
plot(t,V,'m');

[t,x]=ode23('func',[0,2.5], [1.25,0]);
P=[1 0;0 1.5];
V=[];
for i=1:length(t)
    V=[V x(i,:) * P * x(i,:)'];
end 
plot(t,V,'g');
[t,x]=ode23('func',[0,2.5], [0.5,0.5]);
P=[1 0;0 1.5];
V=[];
for i=1:length(t)
    V=[V x(i,:) * P * x(i,:)'];
end 
plot(t,V,'y');
hold off
