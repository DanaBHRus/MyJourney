Hc = tf([2,20],conv([1,2],[1,100]),'iodelay',1/20);
zpk(Hc);

Te = 1/20;
Hd = c2d(Hc,Te,'zoh');
step(Hc,Hd);

rlocus(Hd)
rltool(Hd)

%%nu uita de aproximarile PADE - ordinul aproximat = ordin initial + ordin
%%aproximare PADE (ex: 32 = 2 + 30)