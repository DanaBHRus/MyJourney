Hf = tf(2,conv(conv([1,0],[10,1]),conv([1,1],[20,1])));
T_sigma = 1;
Hd = tf([4*T_sigma,1],conv([8*T_sigma^2,0,0],[T_sigma,1]));
Hc = Hd/Hf;
zpk(Hc)
Ho = feedback(Hd,1);
% wn = 1/sqrt(2)/T_sigma;
% tita = 1/sqrt(2);
ts = 13*T_sigma;

step(Ho);
t = 0:0.01:10;
figure, lsim(t,t,t,Ho);
figure, bode(Hd);