[t,x]=ode23('SNL', [0 2.5], -1); %solutie stabila
plot(t,x,'r');
hold on
[t,x]=ode23('SNL', [0 2.5], -3); %solutie instabila
plot(t,x,'r');
[t,x]=ode23('SNL', [0 2.5], -1.5); plot(t,x,'b');
[t,x]=ode23('SNL', [0 2.5], -2); plot(t,x,'b');
[t,x]=ode23('SNL', [0 2.5], -2.5); plot(t,x,'b');
[t,x]=ode23('SNL', [0 2.5], -0.5); plot(t,x,'k');
%[t,x]=ode23('SNL', [0 2.5], 0); plot(t,x,'k');
[t,x]=ode23('SNL', [0 0.545], -3.5); plot(t,x,'k');
%[t,x]=ode23('SNL', [0 0.5], -4); plot(t,x,'k');
%tabelare
xlabel('t'); ylabel('x(t)');
%slope field
t1=0; t2=2.5; x1=-6; x2=0;
axis([t1 t2 x1 x2]);
[t,x]=meshgrid(t1:0.5:t2, x1:0.5:x2);
dt=ones(size(t)); dx=-(x.^2+4.*x+3);
quiver(t,x,dt,dx);
hold off;