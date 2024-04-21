H = tf(2, conv([1 1], [10 1]), 'iodelay', 1);
figure, step(feedback(H,1)), grid;
gama_impus = 60;
figure, bode(H), grid;
faza = -165+gama_impus;
omega_prim = 0.295;
modul_omega_prim = -4.24;
K = 10^(-modul_omega_prim/20);
tau_i = 4/omega_prim;
Hc = K*tf([tau_i 1],[tau_i 0]);
Hd = Hc*H;
Ho = feedback(Hd,1);
figure, step(Ho), grid;

figure, bode(H), grid;
beta = 0.07179;
omega_prim = 0.934;
modul_omega_prim = -16.2;
K2 = sqrt(beta)*10^(-modul_omega_prim/20);
tau_d = 1/omega_prim/sqrt(beta);
Hc2 = K2*tf([tau_d 1],[beta*tau_d 1]);
Hd2 = Hc2*H;
Ho2 = feedback(Hd2,1);
figure, step(Ho2), grid;

HPI_D1 = c2d(Hc,0.2,'tustin');
HPI_D2 = c2d(Hc,0.5,'tustin');
HPD_D1 = c2d(Hc2,0.2,'tustin');
HPD_D2 = c2d(Hc2,0.5,'tustin');
HP_D1 = c2d(H,0.2);
HP_D2 = c2d(H,0.5);

t_1 = 0:0.2:150;
epsilon_PI_1 = zeros(length(t_1));
c_PI_1 = zeros(length(t_1));
y_PI_1 = step(feedback(HPI_D1*HP_D1,1),t_1);
epsilon_PI_1(1) = 1;
c_PI_1(1) = 1.641;
for k=2:length(t_1)
    epsilon_PI_1(k) = 1-y_PI_1(k);
    c_PI_1(k) = c_PI_1(k-1) + 1.641*epsilon_PI_1(k) - 1.617*epsilon_PI_1(k-1);
end
stairs(t_1,c_PI_1);

t_2 = 0:0.5:150;
epsilon_PI_2 = zeros(length(t_2));
c_PI_2 = zeros(length(t_2));
y_PI_2 = step(feedback(HPI_D2*HP_D2,1),t_2);
epsilon_PI_2(1) = 1;
c_PI_2(1) = 1.659;
for k=2:length(t_2)
    epsilon_PI_2(k) = 1-y_PI_2(k);
    c_PI_2(k) = c_PI_2(k-1) + 1.659*epsilon_PI_2(k) - 1.599*epsilon_PI_2(k-1);
end
figure, stairs(t_2,c_PI_2);

t_3 = 0:0.2:45;
epsilon_PD_1 = zeros(length(t_3));
c_PD_1 = zeros(length(t_3));
y_PD_1 = step(feedback(HPD_D1*HP_D1,1),t_3);
epsilon_PD_1(1) = 1;
c_PD_1(1) = 18.32;
for k=2:length(t_3)
    epsilon_PD_1(k) = 1-y_PD_1(k);
    c_PD_1(k) = 0.483*c_PD_1(k-1) +18.32*epsilon_PD_1(k) - 17.42*epsilon_PD_1(k-1);
end
figure, stairs(t_3,c_PD_1);

t_4 = 0:0.5:45;
epsilon_PD_2 = zeros(length(t_4));
c_PD_2 = zeros(length(t_4));
y_PD_2 = step(feedback(HPD_D2*HP_D2,1),t_4);
epsilon_PD_2(1) = 1;
c_PD_2(1) = 13.68;
for k=2:length(t_4)
    epsilon_PD_2(k) = 1-y_PD_2(k);
    c_PD_2(k) = 0.06868*c_PD_2(k-1) + 13.68*epsilon_PI_2(k) - 12.07*epsilon_PI_2(k-1);
end
figure, stairs(t_4,c_PD_2);