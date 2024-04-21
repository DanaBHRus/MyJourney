clf
%evidentiez puncte echilibru
[~,x]=ode23('DuffingB',[0,0.5],[0,0]);
plot(x(:,1),x(:,2),'rx');
title('(0,0)-sa; (-1,0),(1,0)-noduri instabile; Portret de faze');
xlabel('x1'),ylabel('x2');
grid on
hold on 
[~,x]=ode23('DuffingB',[0,0.5],[1,0]);
plot(x(:,1),x(:,2),'rx');
[~,x]=ode23('DuffingB',[0,0.5],[-1,0]);
plot(x(:,1),x(:,2),'rx');
% CI intr-o vecinatate a punctelor de echilibru
[~,x]=ode23('DuffingB',[0,0.5],[0.1,0.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('DuffingB',[0,0.5],[-0.1,-0.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('DuffingB',[0,0.5],[-0.1,0.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('DuffingB',[0,0.5],[0.1,-0.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('DuffingB',[0,0.5],[2,0]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('DuffingB',[0,0.5],[-2,0]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('DuffingB',[0,0.5],[-3,0]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('DuffingB',[0,0.5],[3,0]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('DuffingB',[0,0.5],[-5,0]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('DuffingB',[0,0.5],[5,0]);
plot(x(:,1),x(:,2),'g');
x11=-15; x12=15; x21=-150; x22=150;
axis([x11 x12 x21 x22]);
[x1,x2]=meshgrid(x11:1.5:x12, x21:15:x22);
dx1=x2;
dx2=7.*x2+x1-x1.^3;
quiver(x1,x2,dx1,dx2);
hold off
%pentru TS plot(t(1:20),x(1:20,1),t(1:20),x(1:20,2)
figure
[t,x]=ode23('DuffingB',[0,0.5],[5,0]);
hold on
subplot(2,1,1), plot(t,x(:,1),'g');
xlabel('t'),ylabel('x1(t)');
grid on
title('(0,0)-sa; (-1,0),(1,0)-noduri instabile; Traiectorie in domeniul timp');
subplot(2,1,2), plot(t,x(:,2),'g');
xlabel('t'),ylabel('x2(t)');
grid on
hold off