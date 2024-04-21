function xp=Pipe_oscilatie_variata(~,x)
xp(1)=x(2);
xp(2)=-0.5*x(2)-2*9.8/30*x(1);
xp=xp';