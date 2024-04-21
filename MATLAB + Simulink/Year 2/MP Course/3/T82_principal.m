clf
%evidentiez puncte echilibru
[~,x]=ode23('T82',[0,0.5],[0,0]);
plot(x(:,1),x(:,2),'rx');
title('(0,0)-nod instabil, (0,-2/5)-șa, (-2,0),(6,-4)-noduri stabile');
xlabel('x1'),ylabel('x2');
grid on
hold on 
[~,x]=ode23('T82',[0,0.5],[0,-2/5]);
plot(x(:,1),x(:,2),'rx');
[~,x]=ode23('T82',[0,0.5],[-2,0]);
plot(x(:,1),x(:,2),'rx');
[~,x]=ode23('T82',[0,0.5],[6,-4]);
plot(x(:,1),x(:,2),'rx');
 % CI intr-o vecinatate a punctelor de echilibru
[~,x]=ode45('T82',[0,0.55],[0.1,0.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode45('T82',[0,0.55],[-0.2,0.2]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode45('T82',[0,15],[-0.1,-0.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode45('T82',[0,15],[-0.1,0]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode45('T82',[0,15],[-1.5,0.5]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode45('T82',[0,15],[-1.5,-0.5]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode45('T82',[0,15],[-2.5,-0.5]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode45('T82',[0,10],[0.1,-0.1]);
plot(x(:,1),x(:,2),'m');
[~,x]=ode23('T82',[0,4.5],[6.5,-4.5]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('T82',[0,4.5],[6.5,-3.5]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('T82',[0,4.5],[5.5,-4.5]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('T82',[0,4.5],[5.5,-3.5]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('T82',[0,10],[0.1,-0.3]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('T82',[0,10],[-0.1,-0.3]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('T82',[0,10],[0.1,-0.5]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('T82',[0,5],[-0.1,-0.5]);
plot(x(:,1),x(:,2),'g');
x11=-3; x12=8; x21=-5; x22=1.5;
axis([x11 x12 x21 x22]);
[x1,x2]=meshgrid(x11:0.5:x12, x21:0.5:x22);
dx1=x1.^2+2.*x1.*x2+2.*x1;
dx2=5.*x2.^2+3.*x1.*x2+2.*x2;
quiver(x1,x2,dx1,dx2);
hold off
figure
[t,x]=ode45('T82',[0,10],[0.1,-0.1]);
hold on
subplot(2,1,1), plot(t,x(:,1),'m');
xlabel('t'),ylabel('x1(t)');
grid on
title('(0,0)-nod instabil,(0,-2/5)-șa,(-2,0),(6,-4)-noduri stabile -- Traiectorie1');
subplot(2,1,2), plot(t,x(:,2),'m');
xlabel('t'),ylabel('x2(t)');
grid on
hold off
figure
[t,x]=ode23('T82',[0,5],[-0.1,-0.5]);
hold on
subplot(2,1,1), plot(t,x(:,1),'g');
xlabel('t'),ylabel('x1(t)');
grid on
title('(0,0)-nod instabil,(0,-2/5)-șa,(-2,0),(6,-4)-noduri stabile -- Traiectorie2');
subplot(2,1,2), plot(t,x(:,2),'g');
xlabel('t'),ylabel('x2(t)');
grid on
hold off