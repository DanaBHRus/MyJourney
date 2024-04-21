[t,x]=ode23('Pipe_oscilatie_variata',[0,25],[1,1]');
subplot(2,1,1),plot(t,x(:,1),'r'); hold on;
xlabel('t'),ylabel('x1(t)'); grid ON;
subplot(2,1,2),plot(t,x(:,2),'b'); hold on;
title('Oscilant stabil, avand L=30,k=0.5,m=1,g=9.8;valori proprii: -0.2500+0.7687*j, -0.2500-0.7687*j');
xlabel('t'),ylabel('x2(t)'); grid ON;
figure
[t,x]=ode45('Pipe_oscilatie_variata',[0,25],[1,1]');
plot(x(:,1),x(:,2));
title('Oscilant stabil, avand L=30,k=0.5,m=1,g=9.8;valori proprii: -0.2500+0.7687*j, -0.2500-0.7687*j');
xlabel('x1(t)'),ylabel('x2(t)'); hold off;