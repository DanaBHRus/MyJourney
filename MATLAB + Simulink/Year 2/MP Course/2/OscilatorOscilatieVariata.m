[t,x]=ode23('Oscilator_oscilatie_variata',[0,10],[1,1]');
subplot(2,1,1),plot(t,x(:,1),'r'); hold on;
xlabel('t'),ylabel('x1(t)'); grid ON;
subplot(2,1,2),plot(t,x(:,2),'b'); hold on;
title('Oscilant stabil, avand k=6, niu=1, m=1;valori proprii: (-1+rad(23)*j)/2, (-1-rad(23)*j)/2');
xlabel('t'),ylabel('x2(t)'); grid ON;
figure
[t,x]=ode45('Oscilator_oscilatie_variata',[0,10],[1,1]');
plot(x(:,1),x(:,2));
title('Oscilant stabil, avand k=6, niu=1, m=1;valori proprii: (-1+rad(23)*j)/2, (-1-rad(23)*j)/2');
xlabel('x1(t)'),ylabel('x2(t)'); hold off;