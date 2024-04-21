Hf = tf(2,[1,1]);
T_sigma = 1;
Hd = tf(1,conv([2*T_sigma,0],[T_sigma,1]));
Hc = Hd/Hf;
zpk(Hc)
Ho = feedback(Hd,1);
wn = 1/sqrt(2)/T_sigma;
tita = 1/sqrt(2);
ts = 8*T_sigma;
cv = 1/2/T_sigma;

step(Ho);
t = 0:0.01:10;
figure, lsim(t,t,t,Ho);
figure, bode(Hd);