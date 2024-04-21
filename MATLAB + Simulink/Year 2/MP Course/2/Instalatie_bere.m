function xp=Instalatie_bere(~,x)
xp(1)=5-0.01*x(1)+0.0025*x(2);
xp(2)=10+0.01*x(1)-0.01*x(2);
xp=xp';