[t,x]=ode23('Instalatie_bere',[0,1000],[0,0]');
subplot(2,1,1),plot(t,x(:,1),'r'),hold on
xlabel('t'); ylabel('x1(t)');
subplot(2,1,2),plot(t,x(:,2),'r'),hold on
xlabel('t'); ylabel('x2(t)');
[t,x]=ode23('IBMod',[0,1000],[0,0]');
subplot(2,1,1),plot(t,x(:,1),'b'),hold on
subplot(2,1,2),plot(t,x(:,2),'b'),hold on
