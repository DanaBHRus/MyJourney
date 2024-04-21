function xp=Pipe_amortizat(~,x)
xp(1)=x(2);
xp(2)=-4*x(2)-2*9.8/30*x(1);
xp=xp';