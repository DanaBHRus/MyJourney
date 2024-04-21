function xp=Instalatie_bere_mod2(~,x)
xp(1)=11-(13/1000)*x(1)+(2/2000)*x(2);
xp(2)=18.8+(13/1000)*x(1)-(15.9*2/2000)*x(2);
xp=xp';