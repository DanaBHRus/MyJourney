function xp=Instalatie_bere_mod(~,x)
xp(1)=11.3334-0.0127*x(1)+0.0007*x(2);
xp(2)=8.6661+0.0127*x(1)-0.0107*x(2);
xp=xp';