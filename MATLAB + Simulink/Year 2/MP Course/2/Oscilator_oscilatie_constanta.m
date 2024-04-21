function xp=Oscilator_oscilatie_constanta(~,x)
xp(1)=x(2);
xp(2)=-x(1);
xp=xp';