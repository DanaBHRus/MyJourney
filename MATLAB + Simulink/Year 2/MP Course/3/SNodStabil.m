function xp=SNodStabil(~,x)
xp(1)=-x(1)^2-2*x(1)*x(2)+2*x(1);
xp(2)=6*x(2)^2+2*x(1)*x(2)-2*x(2);
xp=xp';