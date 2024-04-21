kf = 3.5;
Tf = 0.5;
Hf = tf(kf,[Tf,1,0]);
wf = 1/Tf;
suprareglaj = 0.15;
tita = -log(suprareglaj)/sqrt(pi^2+log(suprareglaj)^2);
modA = 1/4/sqrt(2)/tita^2;
modAdb = db(modA);
F = kf/wf/sqrt(1+Tf^2*wf^2);
Fdb = db(F);
FN = Fdb-modAdb;
kp = 10^(-FN/20);
Ho = feedback(kp*Hf,1)
step(Ho);
t = 0:0.01:10;
figure(), plot(t,t,t,lsim(Ho,t,t));
% wn = 1.9344;
% ts = 4/tita/wn;
% cv = wn/2/tita;
% dwb = wn*sqrt(1-2*tita+sqrt(2-4*tita^2+4*tita^4));