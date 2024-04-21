function xp=DuffingB(~,x)
xp(1)=x(2);
xp(2)=7*x(2)+x(1)-x(1)^3;
xp=xp';