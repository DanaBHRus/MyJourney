[t,x]=ode23('Pipe_amortizat',[0,25],[1,1]');
subplot(2,1,1),plot(t,x(:,1),'r'); hold on;
xlabel('t'),ylabel('x1(t)'); grid ON;
subplot(2,1,2),plot(t,x(:,2),'b'); hold on;
title('Dinamică exponențială stabilă, avand L=30,k=4,m=1,g=9.8;valori proprii: -0.1706,-3.8294');
xlabel('t'),ylabel('x2(t)'); grid ON;
figure
[t,x]=ode45('Pipe_amortizat',[0,25],[1,1]');
plot(x(:,1),x(:,2));
title('Dinamică exponențială stabilă, avand L=30,k=4,m=1,g=9.8;valori proprii: -0.1706,-3.8294');
xlabel('x1(t)'),ylabel('x2(t)'); hold off;