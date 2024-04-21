function xp=CS(~,x)
xp(1)=4*x(1)-x(1)^2-x(1)*x(2);
xp(2)=2*x(2)-2/3*x(2)^2-1/11*x(1)*x(2);
xp=xp';