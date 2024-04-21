Hf = tf(8.6,conv([0.01,1],[0.6,1]))*tf(2.4,conv([0.5,1],[50,1]));
T_sigma = 1.1100;
Hd = tf([4*T_sigma,1],conv([8*T_sigma^2,0,0],[T_sigma,1]));
Hc = Hd/Hf;
zpk(Hc)
Ho = feedback(Hd,1);

figure, step(Ho);
t = 0:0.01:10;
figure, lsim(t,t,t,Ho);
figure, bode(Hd);