function xp=Oscilator_amortizat(~,x)
xp(1)=x(2);
xp(2)=-5*x(2)-6*x(1);
xp=xp';