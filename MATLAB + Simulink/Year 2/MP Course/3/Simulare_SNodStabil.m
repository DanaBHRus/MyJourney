clf
%evidentiez puncte echilibru
[~,x]=ode23('SNodStabil',[0,0.5],[0,0]);
plot(x(:,1),x(:,2),'rx');
title('(0,0),(2,0)-puncte sa, (0,1/3)-focar stabil, (4,-1)-nod stabil');
xlabel('x1'),ylabel('x2');
grid on
hold on 
[~,x]=ode23('SNodStabil',[0,0.5],[0,1/3]);
plot(x(:,1),x(:,2),'rx');
[~,x]=ode23('SNodStabil',[0,0.5],[2,0]);
plot(x(:,1),x(:,2),'rx');
[~,x]=ode23('SNodStabil',[0,0.5],[4,-1]);
plot(x(:,1),x(:,2),'rx');
%puncte din vecinatate
[~,x]=ode23('SNodStabil',[0,1],[-0.1,-0.1]);
plot(x(:,1),x(:,2),'m');
[~,x]=ode23('SNodStabil',[0,1],[-0.1,0.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('SNodStabil',[0,3],[0.1,0.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('SNodStabil',[0,3],[0.1,-0.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('SNodStabil',[0,0.5],[2.1,0.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('SNodStabil',[0,0.35],[2.1,0.2]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('SNodStabil',[0,10],[2.1,-0.1]);
plot(x(:,1),x(:,2),'g');
[~,x]=ode23('SNodStabil',[0,5],[3.5,-0.5]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('SNodStabil',[0,5],[4.5,-0.5]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('SNodStabil',[0,5],[3.5,-1.5]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('SNodStabil',[0,5],[4.5,-1.5]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('SNodStabil',[0,0.5],[0.1,1/3+0.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('SNodStabil',[0,0.5],[0.1,1/3-0.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('SNodStabil',[0,0.5],[-0.1,1/3+0.1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode23('SNodStabil',[0,0.5],[-0.1,1/3-0.1]);
plot(x(:,1),x(:,2),'b');
x11=-2; x12=5; x21=-1.5; x22=1.5;
axis([x11 x12 x21 x22]);
[x1,x2]=meshgrid(x11:0.5:x12, x21:0.25:x22);
dx1=-x1.^2-2.*x1.*x2+2.*x1;
dx2=6.*x2.^2+2.*x1.*x2-2.*x2;
quiver(x1,x2,dx1,dx2);
hold off
figure()
[t,x]=ode23('SNodStabil',[0,1],[-0.1,-0.1]);
hold on
subplot(2,1,1), plot(t,x(:,1),'m');
xlabel('t'),ylabel('x1(t)');
grid on
title('(0,0),(2,0)-puncte sa, (0,1/3)-focar stabil, (4,-1)-nod stabil -- Traiectorie1');
subplot(2,1,2), plot(t,x(:,2),'m');
xlabel('t'),ylabel('x2(t)');
grid on
hold off
figure()
[t,x]=ode23('SNodStabil',[0,10],[2.1,-0.1]);
hold on
subplot(2,1,1), plot(t,x(:,1),'g');
xlabel('t'),ylabel('x1(t)');
grid on
title('(0,0),(2,0)-puncte sa, (0,1/3)-focar stabil, (4,-1)-nod stabil -- Traiectorie2');
subplot(2,1,2), plot(t,x(:,2),'g');
xlabel('t'),ylabel('x2(t)');
grid on
hold off