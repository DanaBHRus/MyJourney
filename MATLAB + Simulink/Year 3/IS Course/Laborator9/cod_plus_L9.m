%% LABORATOR 9 IS -- 27-28.11.2023
% Numele: Rus
% Prenumele: Dana-Bendis-Hera
% Data: 27.11.2023

m = 1;
n = 1;

%% Generarea Datelor 
% calibrarea unui semnal SPAB
N = 5; 
bi = 3; 
bj = 5;

num_points = 5000;
p = 50; % divizorul de frecventa

Te = 1e-4;
t_init = 0:Te:(num_points-1)*Te;

u_spab = spab(N,bi,bj,num_points,p);
u_init = m/10 + u_spab*0.05 + m/10*(t_init>=(num_points/2)*Te);

y_init = lsim(ss([-1/2*n*1e3,-n^2*1e6;1,0],[m;-n*100],[1 0],0),u_init,t_init)+...
    0.6*rand(num_points,1);

[t,u,y] = quant(t_init,u_init,y_init,m);

plot(t,[u y]);

Te = t(2)-t(1);
i1 = 2000;
i2 = 12818;
i3 = 23682;
i4 = 34518;

data_id = iddata(y(i1:i2),u(i1:i2),Te);
data_vd = iddata(y(i3:i4),u(i3:i4),Te);

%ARMAX
m_armax = armax(data_id,[2,2,2,1]);
figure(),resid(m_armax,data_vd);
figure(),compare(m_armax,data_vd);
%momentan, eroare buna, dar nu trece testul de autocorelatie - aplicare pem
% m_armax_pem = pem(m_armax,data_id);
% figure(),resid(m_armax_pem,data_vd);
% figure(),compare(m_armax_pem,data_vd);
% %in continuare nu trece testul de autocorelatie - decimarea datelor
% fd = 7;
% Ted = Te*fd;
% data_id_dec = iddata(y(i1:fd:i2),u(i1:fd:i2),Ted);
% data_vd_dec = iddata(y(i3:fd:i4),u(i3:fd:i4),Ted);
% m_armax_dec = armax(data_id_dec,[2,2,10,1]);
% figure(),resid(m_armax_dec,data_vd_dec);
% figure(),compare(m_armax_dec,data_vd_dec);
% H1 = tf(m_armax_dec.B,m_armax_dec.A,Ted,'variable','z^-1');

%OE
m_oe = oe(data_id,[2,2,1]); %nB, nF, nd
figure, resid(m_oe,data_vd);
figure, compare(m_oe,data_vd);
fd = 7;
Ted = Te*fd;
%mai pune un pem peste OE -- poate iese asa
data_id_dec = iddata(y(i1:fd:i2),u(i1:fd:i2),Ted);
data_vd_dec = iddata(y(i3:fd:i4),u(i3:fd:i4),Ted);
m_oe_dec = oe(data_id_dec,[2,2,1]);
figure(),resid(m_oe_dec,data_vd_dec);
figure(),compare(m_oe_dec,data_vd_dec);