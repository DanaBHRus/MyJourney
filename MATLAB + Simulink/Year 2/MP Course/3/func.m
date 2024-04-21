function xp=func(~,x)
xp(1)=x(1)^2+2*x(1)*x(2)-2*x(1)-4*x(2);
xp(2)=5*x(2)^2+3*x(1)*x(2)-4*x(2);
xp=xp';