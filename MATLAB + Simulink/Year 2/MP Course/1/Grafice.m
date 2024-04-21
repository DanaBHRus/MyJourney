[t,x]=ode23('SLSinst',[0 0.3], -1); %solutia de echilibru
plot(t,x,'r') 
hold on
[t,x]=ode23('SLSinst',[0 0.3], 0);
plot(t,x,'b')
%[t,x]=ode23('SLSinst',[0 0.3], 0.5);
%plot(t,x,'b')
[t,x]=ode23('SLSinst',[0 0.3], -2);
plot(t,x,'b')
%[t,x]=ode23('SLSinst',[0 0.3], -1.5);
%plot(t,x,'b')
xlabel('t');
ylabel('x(t)');
hold off