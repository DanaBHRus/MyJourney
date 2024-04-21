Hf2 = tf(2.4,conv([0.5,1],[50,1]));
T_sigma = 0.5;
Hd2 = tf(1,conv([2*T_sigma,0],[T_sigma,1]));
Hc2 = Hd2/Hf2;
% zpk(Hc2)
Ho2 = feedback(Hd2,1);

Hf1 = tf(8.6,conv([0.01,1],[0.6,1]));
Hf = Ho2 * Hf1;
%zpk(Hf)
T_sigma = 0.01;
Hd1 = tf([4*T_sigma,1],conv([8*T_sigma^2,0,0],[T_sigma,1]));
Hc1 = Hd1/Hf1;
zpk(Hc1)
Ho1 = feedback(Hd1,1);

figure, step(Ho1);
t = 0:0.01:10;
figure, lsim(t,t,t,Ho1);
figure, bode(Hd1);
