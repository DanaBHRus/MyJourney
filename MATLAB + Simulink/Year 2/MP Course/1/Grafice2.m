[t,x]=ode23('SLSst',[0 1.5], -1); %solutia de echilibru
plot(t,x,'r') 
hold on
[t,x]=ode23('SLSst',[0 1.5], 0);
plot(t,x,'b')
%[t,x]=ode23('SLSst',[0 1.5], 0.5);
%plot(t,x,'b')
[t,x]=ode23('SLSst',[0 1.5], -2);
plot(t,x,'b')
%[t,x]=ode23('SLSst',[0 1.5], -1.5);
%plot(t,x,'b')
xlabel('t');
ylabel('x(t)');
hold off