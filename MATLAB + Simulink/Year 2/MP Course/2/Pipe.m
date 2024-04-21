function xp=Pipe(~,x)
syms k m g L
xp(1)=x(2);
xp(2)=-(k/m)*x(2)-(2*g/L)*x(1);
xp=xp';