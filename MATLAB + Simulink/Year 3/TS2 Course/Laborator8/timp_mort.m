H = tf(6,[8,1],'iodelay',0.6);
Te = 0.6;
Hd = c2d(H,Te,'zoh');
step(H,Hd);