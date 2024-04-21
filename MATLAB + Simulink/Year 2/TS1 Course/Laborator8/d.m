H = tf([1],[1,2,2]);
step(H);
figure()
t = 0:0.1:10;
lsim(H,t,t);
