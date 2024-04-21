H = tf([3],conv([1,1],[1,5]));
step(H);
figure()
t = 0:0.1:10;
lsim(H,t,t);
