tita = 0.95;
wn = 9.6;
suprareglaj = exp(-pi*tita/sqrt(1-tita^2));
estv = 2*tita/wn;
w = wn*sqrt(1-tita^2);
Kw = tf(wn^2,[1,2*tita*wn,wn^2]);
Gp = tf(2.5,[1,3.2,0]);
Gc = 1/Gp*tf(wn^2,[1,2*tita*wn,0]);
step(Gc);
step(Kw)
