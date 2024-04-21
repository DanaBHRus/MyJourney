[t,x]=ode23('corpuri2',[0,10],[0,0,0,0]);
y=x(:,3); %selectam intreaga coloana 3, corespunzatoare pozitiei corpului 2 
plot(t,y);
grid on;
axis tight;
title("corpuri2 cu [0,0,0,0] conditii initiale");