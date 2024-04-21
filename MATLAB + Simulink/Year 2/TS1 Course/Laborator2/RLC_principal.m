[t,x]=ode23('RLC',[0,10],[0,0]);
y=x(:,2);
plot(t,y);
grid on;
axis tight;
title("RLC cu [0,0] conditii initiale");