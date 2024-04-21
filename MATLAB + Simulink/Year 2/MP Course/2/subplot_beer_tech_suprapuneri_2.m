[t,x]=ode23('Instalatie_bere',[0,1000],[0,0]');
subplot(2,1,1),plot(t,x(:,1),'r'),hold on
xlabel('t'); ylabel('x1(t)');
grid on
subplot(2,1,2),plot(t,x(:,2),'r'),hold on
xlabel('t'); ylabel('x2(t)');
title('Modificarea unei condiții inițiale, intrări identice');
grid on;
[t,x]=ode23('Instalatie_bere',[0,1000],[0,400]');
subplot(2,1,1),plot(t,x(:,1),'b'),hold on
subplot(2,1,2),plot(t,x(:,2),'b'),hold on
figure
plot(x(:,1),x(:,2),'b');
xlabel('x1(t)'); ylabel('x2(t)');
hold on
grid on 
title('Modificarea unei condiții inițiale, intrări identice');
[t,x]=ode23('Instalatie_bere',[0,1000],[0,0]');
plot(x(:,1),x(:,2),'r');
hold off