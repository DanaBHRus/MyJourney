%scriere parametrii de pe foaie
K = 0.0625;
ku = 0.6;
U2 = 30;
Rs = 15;
C = 13.89e-6;
L = 3.5e-3;
kf = 0.5;
KP = 0.6285; 
%
% KP = 5.1970e-04;
Hd = K*sqrt(2)*ku*U2*tf(1,[L*C,L/Rs,1]);
Ho = feedback(Hd,kf);
Hd1 = K*sqrt(2)*ku*U2*tf(1,[L*C,L/Rs,1])*KP;
Ho1 = feedback(Hd1,kf);
% step(Hd)
step(Ho,Ho1);
% roots([1,4800,2.057e07]);
% KP = 1/3.273e07*2/3.8484e03

%%
a=2.4e03;
b=3.8484e03;
c=1e07;
K = 3.273e07;
titamin = c/2/sqrt(a*b);
Td = 1/a;
Ts = 4-6*Td;
Kp = 2*titamin*Td



