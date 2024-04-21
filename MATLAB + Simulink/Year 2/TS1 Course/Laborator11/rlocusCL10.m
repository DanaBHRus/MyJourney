figure()
H = tf([10,20],[1,0,0]);
rlocus(H);
k = 4/5;
Ho = feedback(k*H,1) %%Hr = 1;
pole(Ho);
step(Ho);
%%rltool(H)