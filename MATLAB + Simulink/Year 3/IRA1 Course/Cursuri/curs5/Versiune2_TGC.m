pc_zc = 1.05;
delta_sigma_c = pc_zc-1;
sigma = 0.10 - delta_sigma_c;
tita = -log(sigma)/sqrt(log(sigma)^2+pi^2);
ts = 1.5;
wn = 4/tita/ts;
w = wn*sqrt(1-tita^2);
cv = 5; %impus
pc = delta_sigma_c/(2*tita/wn-1/cv);
zc = pc/(1+delta_sigma_c);
t = 0:0.01:50;
Ho = tf(wn^2,[1,2*tita*wn,wn^2])*tf([1,zc],[1,pc])*pc/zc;
y = lsim(Ho,t,t);
cv_real = 1/(t(end)-y(end));
Hf =  tf(2.5,[1,3.2,0]); 
Hr = 1/Hf * Ho/(1-Ho);
zpk(Hr)
Hr_simplificat = tf(6.3993*[0.3125,1],[0.1825,1]);
Ho_simplificat = feedback(Hr_simplificat*Hf,1);
%figure, step(Ho);
figure, step(Ho_simplificat);
y_simplificat = lsim(Ho_simplificat,t,t);
cv_real_simplificat = 1/(t(end)-y_simplificat(end))