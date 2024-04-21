clf
%evidentiez puncte echilibru
[~,x]=ode23('CS',[0,0.5],[0,0]);
plot(x(:,1),x(:,2),'rx');
title('(0,0)-nod instabil;(22/19,54/19)-nod stabil;(0,3),(4,0)-pct. șa');
xlabel('x1'),ylabel('x2');
grid on
hold on 
[~,x]=ode23('CS',[0,0.5],[0,3]);
plot(x(:,1),x(:,2),'rx');
[~,x]=ode23('CS',[0,0.5],[4,0]);
plot(x(:,1),x(:,2),'rx');
[~,x]=ode23('CS',[0,0.5],[22/19,54/19]);
plot(x(:,1),x(:,2),'rx');
% CI intr-o vecinatate a punctelor de echilibru
[~,x]=ode23('CS',[0,8],[0.1,0.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('CS',[0,8],[0.05,0.15]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('CS',[0,8],[0.2,0.2]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('CS',[0,1],[0,0.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('CS',[0,0.5],[0.1,0]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('CS',[0,5],[0,3.5]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('CS',[0,5],[0,2.5]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('CS',[0,10],[0.1,2.5]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('CS',[0,10],[0.1,3.5]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('CS',[0,10],[4.5,0]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('CS',[0,10],[3.5,0]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('CS',[0,10],[4.5,0.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('CS',[0,10],[3.5,0.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('CS',[0,5],[22/19+0.5,54/19+0.5]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('CS',[0,5],[22/19-0.5,54/19-0.5]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('CS',[0,10],[4,0.1]);
plot(x(:,1),x(:,2),'g');
x11=0; x12=4.5; x21=0; x22=3.5;
axis([x11 x12 x21 x22]);
[x1,x2]=meshgrid(x11:0.5:x12, x21:0.5:x22);
dx1=4.*x1-x1.^2-x1.*x2;
dx2=2.*x2-2/3.*x2.^2-1/11.*x1.*x2;
quiver(x1,x2,dx1,dx2);
hold off
figure
[t,x]=ode23('CS',[0,10],[4,0.1]);
hold on
subplot(2,1,1), plot(t,x(:,1),'g');
xlabel('t'),ylabel('x1(t)');
grid on
title('(0,0)-nod instabil;(22/19,54/19)-nod stabil;(0,3),(4,0)-pct. șa');
subplot(2,1,2), plot(t,x(:,2),'g');
xlabel('t'),ylabel('x2(t)');
grid on
hold off