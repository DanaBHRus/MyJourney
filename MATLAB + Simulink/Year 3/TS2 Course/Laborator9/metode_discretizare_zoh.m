Hc = tf([1,2],conv([4,1],[1,-1]));
Te = 0.1;
Hd = c2d(Hc,Te,'zoh');
zpk(Hd)