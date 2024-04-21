Hd = tf(2,conv([1,0],[2,1]));
Ho = feedback(Hd,1);
step(Ho);
figure()
bode(Ho)