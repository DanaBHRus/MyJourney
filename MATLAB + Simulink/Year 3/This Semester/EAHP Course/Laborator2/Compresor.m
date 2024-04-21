Cd = 0.632897;
d0 = 11.565e-3; %m
S0 = pi*d0^2/4;
p1 = (3+2)/2;
x = 1.4;
g = 9.81; %m/s^2
R = 2927e-2; 
T1 = 273+21; %K
delta_p3 = (6+5+5)/3; %bari
delta_p2 = (2+3+3)/3; %bari
delta_p = ((delta_p3+delta_p2)/2)*10^(-4); %mmH2O - bari
p2 = (p1-delta_p)*(10^5);
p1 = ((3+2)/2)*(10^5);
Qg = Cd*S0*p1*sqrt((2*x)/(x-1)*g/R/T1*((p2/p1)^(2/x)-(p2/p1)^((x+1)/x)));

gamma_aer = 1.293;
delta_t = (21.35+21.08+22)/3;
Q_lin = gamma_aer*24*10^(-3)/delta_t;