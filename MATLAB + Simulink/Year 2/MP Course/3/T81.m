function xp=T81(~,x)
xp(1)=-2*x(1)^2-x(1)^2*x(2)+x(1)*x(2)+2*x(1);
xp(2)=-x(1)*x(2)+3*x(2);
xp=xp';