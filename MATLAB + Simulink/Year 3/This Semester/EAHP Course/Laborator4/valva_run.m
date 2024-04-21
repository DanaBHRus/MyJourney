%solenoid electrical circuit
e_in = 10;
R = 3;
L = 0.005;
K = 6;

%mechanical parameters 
m = 0.03;
b = 12;
k = 6000;
F_dry = 0.5;

sim valva

figure(1), plot(t,1e3*x), grid, xlabel('time, s'), ylabel('armature-valve position, x(t), mm');
figure(2), plot(t,I), grid, xlabel('time, s'), ylabel('solenoid current, I(t), A');