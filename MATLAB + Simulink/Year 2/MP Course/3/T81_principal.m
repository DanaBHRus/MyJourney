clf
%evidentiez puncte echilibru
[~,x]=ode23('T81',[0,0.5],[0,0]);
plot(x(:,1),x(:,2),'rx');
title('(0,0)-nod instabil, (1,0)-șa, (3,-2)-centru');
xlabel('x1'),ylabel('x2');
grid on
hold on 
[~,x]=ode23('T81',[0,0.5],[3,-2]);
plot(x(:,1),x(:,2),'rx');
[~,x]=ode23('T81',[0,0.5],[1,0]);
plot(x(:,1),x(:,2),'rx');
% CI intr-o vecinatate a punctelor de echilibru
[~,x]=ode45('T81',[0,1.5],[0.1,0.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode45('T81',[0,0.55],[-0.2,0.2]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode45('T81',[0,1.35],[0.1,-0.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode45('T81',[0,1],[-0.1,-0.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode45('T81',[0,2],[1.1,0.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode45('T81',[0,2],[1.1,-0.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode45('T81',[0,1.75],[0.9,0.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode45('T81',[0,1.75],[0.9,-0.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode45('T81',[0,1.1],[0.5,0.5]);
plot(x(:,1),x(:,2),'m');
[~,x]=ode45('T81',[0,9],[0.5,0]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode45('T81',[0,9],[1.5,0]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode45('T81',[0,2],[3.1,-2.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode45('T81',[0,2],[3.1,-1.9]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode45('T81',[0,2],[3.5,-2.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode45('T81',[0,2],[3.5,-1.9]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode45('T81',[0,50],[4,-2]);
plot(x(:,1),x(:,2),'g');
x11=-3; x12=5; x21=-5; x22=6;
axis([x11 x12 x21 x22]);
[x1,x2]=meshgrid(x11:1:x12, x21:1:x22);
dx1=-2.*x1.^2-x1.^2.*x2+x1.*x2+2.*x1;
dx2=-x1.*x2+3.*x2;
quiver(x1,x2,dx1,dx2);
hold off
figure
[t,x]=ode45('T81',[0,1.1],[0.5,0.5]);
hold on
subplot(2,1,1), plot(t,x(:,1),'m');
xlabel('t'),ylabel('x1(t)');
grid on
title('(0,0)-nod instabil, (1,0)-șa, (3,-2)-centru -- Traiectorie1');
subplot(2,1,2), plot(t,x(:,2),'m');
xlabel('t'),ylabel('x2(t)');
grid on
hold off
figure
[t,x]=ode45('T81',[0,50],[4,-2]);
hold on
subplot(2,1,1), plot(t,x(:,1),'g');
xlabel('t'),ylabel('x1(t)');
grid on
title('(0,0)-nod instabil, (1,0)-șa, (3,-2)-centru -- Traiectorie2');
subplot(2,1,2), plot(t,x(:,2),'g');
xlabel('t'),ylabel('x2(t)');
grid on
hold off