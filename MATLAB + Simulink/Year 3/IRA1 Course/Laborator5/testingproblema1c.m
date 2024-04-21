suprareglaj = 0.005;
tita = -log(suprareglaj)/sqrt(log(suprareglaj)^2+pi^2)
tr = 2.5;
wn = 4/tr/tita
cv = wn/2/tita
dwb = wn*sqrt(1-2*tita+sqrt(2-4*tita^2+4*tita^4))
kf = 2;
Tf = 2;
Hi = tf([Tf,1],[1/2/tita/wn,1])
kp = wn/2/tita/kf
Hc = kp * Hi
Ho = tf(wn^2,[1,2*tita*wn,wn^2])
step(Ho)
figure(),bode(Ho)