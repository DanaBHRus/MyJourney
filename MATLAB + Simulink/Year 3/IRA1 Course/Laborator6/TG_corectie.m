pc_zc = 1.05;
delta_sigma_c = pc_zc-1;
sigma = 0.1-delta_sigma_c;
tita = -log(sigma)/sqrt(log(sigma)^2+pi^2);
ts = 6;
wn = 4/tita/ts;
dwb = wn*sqrt(1-2*tita+sqrt(2-4*tita^2+4*tita^4));
cv = 1.75; %impus
pc = delta_sigma_c/(2*tita/wn-1/cv);
zc = pc/(1+delta_sigma_c);
t = 0:0.01:50;
Ho = tf(wn^2,[1,2*tita*wn,wn^2])*tf([1,zc],[1,pc])*pc/zc;
y = lsim(Ho,t,t);
cv_real = 1/(t(end)-y(end));
Tf = 5;
Kf = 2;
Hf = tf(Kf,[Tf,1,0]);
Hr = 1/Hf * Ho/(1-Ho);
zpk(Hr);
Hr_simplificat = tf(0.3579*[5,1],[0.7305,1]);
Ho_simplificat = feedback(Hr_simplificat*Hf,1);
step(Ho)
figure, step(Ho_simplificat)
y_simplificat = lsim(Ho_simplificat,t,t);
cv_real_simplificat = 1/(t(end)-y_simplificat(end))