H = tf(12,conv([60,1],[2,1]));
Te = 6.2;
Hd = c2d(H,Te,'zoh');
step(H,Hd);