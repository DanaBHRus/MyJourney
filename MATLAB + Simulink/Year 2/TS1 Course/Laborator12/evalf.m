Hc = tf([1,8],[1,0]);
Hf = tf(2,[1,5]);
Hr = 1;
Hdes = Hc*Hf*Hr;
rlocus(Hdes)

kdes = -1/evalfr(Hdes,-3.1)

kap = -1/evalfr(Hdes,-12.89)

rltool(Hdes)