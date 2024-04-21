[t,x]=ode23('R2C2',[0,10],[0,0]);
y=-x(:,2);
plot(t,y);
grid on;
axis tight;
title("R2C2 cu [0,0] conditii initiale");