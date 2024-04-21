%% LABORATOR 8 IS -- 20-21.11.2023
% Numele: Rus 
% Prenumele: Dana-Bendis-Hera
% Data: 20.11.2023

m = 2;
n = 2;

%% Generarea Datelor 
% calibrarea unui semnal SPAB
N = 5; 
bi = 3; 
bj = 5;

num_points = 5000;
p = 50; % divizorul de frecventa

Te = 1e-4;
t = 0:Te:(num_points-1)*Te;

u_spab = spab(N,bi,bj,num_points,p);
u = m/10 + u_spab*0.05 + m/10*(t>=(num_points/2)*Te);

plot(t,u);

y = lsim(ss([-m*n*1e3,-n^2*1e6;1,0],[m;-n*100],[1 0],0),u,t)+...
    0.6*rand(num_points,1);

hold on
plot(t,y);

i1 = 1101;
i2 = 2501;
i3 = 2650;
i4 = 4047;
data_id = iddata(y(i1:i2),u(i1:i2)',Te);
data_vd = iddata(y(i3:i4),u(i3:i4)',Te);

%ARMAX - mai vezi la capete
m_armax = armax(data_id,[2,2,0,1]);
figure(),resid(m_armax,data_vd); %!!
figure(),compare(m_armax,data_vd);
H1 = tf(m_armax.B,m_armax.A,Te,'variable','z^-1')

%OE
m_oe = oe(data_id,[2,2,1]); %nB, nF, nd
figure, resid(m_oe,data_vd);
figure, compare(m_oe,data_vd);
Hd_oe = tf(m_oe.B,m_oe.F,Te,'variable','z^-1')