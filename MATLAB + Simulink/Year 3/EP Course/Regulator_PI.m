%scriere parametrii de pe foaie
K = 0.0625;
ku = 0.6;
U2 = 30;
Rs = 15;
C = 13.89e-6;
L = 3.5e-3;
kf = 0.5;
%%
P=1;
I=0.75e+03;
Hd = K*sqrt(2)*ku*U2*tf(1,[L*C,L/Rs,1]);
Ho = feedback(Hd,kf);
Hd1 = K*sqrt(2)*ku*U2*tf(1,[L*C,L/Rs,1])*tf([P,I],[1,0]);
Ho1 = feedback(Hd1,kf);
step(Ho,Ho1);