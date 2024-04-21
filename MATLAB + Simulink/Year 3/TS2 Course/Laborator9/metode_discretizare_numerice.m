H = tf(12,[3,1],'iodelay',0.4);
Te = 0.4;
Hd1 = tf(1.6,[1,-0.8667,0],Te);
Hd2 = tf(1.4118,[1,-0.8824],Te);
Hd3 = c2d(H,Te,'tustin');

step(H,Hd1,Hd2,Hd3);
legend('H(s)','Ef','Eb','Tustin');