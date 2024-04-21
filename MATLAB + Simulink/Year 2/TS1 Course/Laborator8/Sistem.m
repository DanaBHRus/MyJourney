H = tf([16],conv([1 4],[1,2,2]));
step(H);
figure()
t = 0:0.1:10;
lsim(H,t,t);

k = 1;
T = 8;
H1 = tf(k,[T,1]);
step(H1);

k = 1;
wn = 1;
zeta = 1;
H2 = tf([k*wn^2]*[1,0.005],[1 2*zeta*wn wn^2]);
step(H2)
pole(H2)