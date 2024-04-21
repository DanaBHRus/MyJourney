[t,x]=ode23('corpUnic',[0,10],[0,0]);
y=x(:,1);
plot(t,y);
grid on;
axis tight;
title("corpUnic cu [0,0] conditii initiale");