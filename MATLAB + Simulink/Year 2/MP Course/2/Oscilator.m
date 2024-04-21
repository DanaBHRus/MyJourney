function xp=Oscilator(~,x)
syms niu m k 
xp(1)=x(2);
xp(2)=-(niu/m)*x(2)-(k/m)*x(1);
xp=xp';