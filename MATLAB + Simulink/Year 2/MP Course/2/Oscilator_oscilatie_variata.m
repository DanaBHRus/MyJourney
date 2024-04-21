function xp=Oscilator_oscilatie_variata(~,x)
xp(1)=x(2);
xp(2)=-x(2)-6*x(1);
xp=xp';