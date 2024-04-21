%% Identificarea Sistemelor - Laboratorul 4 (23-24.10.2023) 
% Numele Prenume: Rus Dana-Bendis-Hera
% Data: 23.10.2023
% 
% Introduceti valoarile lui n si m:
n = 2;
m = 1;

%% Generarea datelor - A NU SE MODIFICA!
rng(n);
t1 = 1/n;
t2 = 1/n/10;
Te = t2/100;
t = 0:Te:10000*Te;
t0 = n*250*Te;
u = (0.5*m * (t>=t0))' + m/100*randn(length(t),1) + 0.1*m;
y = lsim([0 1; -1/t1/t2 -1/t1-1/t2],[0; m/t1/t2],[1 0],[0],u-0.1*m,t) + 0.2*m + m/200*randn(length(t),1); 
figure
plot(t,u,t,y)
%% Identificare k
i1 = 14;
i2 = 486;
i3 = 5171;
i4 = 9935;

u0 = mean(u(i1:i2));
y0 = mean(y(i1:i2));
ust = mean(u(i3:i4));
yst = mean(y(i3:i4));
k = (yst-y0)/(ust-u0);
%% Inserati codul necesar identificarii pe baza metodei tangentei aici:
hold on;
plot(t,yst*ones(1,length(t)),'k');
plot(t,y0*ones(1,length(t)),'k');

i5 = 500;
i6 = 514;
i7 = 1500;
tau = t(i6)-t(i5);
T = t(i7)-t(i6);

N = round(tau/(t(2)-t(1)));
%numarul tactilor de intarziere = round(timp_mort/perioada de achizitie a datelor)
u_tau = [u(1)*ones(N,1); u(1:end-N)];
A = -1/T;
B = k/T;
C = 1;
D = 0;
sys = ss(A,B,C,D);
ysim = lsim(sys,u_tau-u0,t,0)+y0;

figure()
plot(t,y,t,ysim);
J = norm(y-ysim)/sqrt(length(y));
Empn = norm(y-ysim)/norm(y-mean(y))
%% Inserati codul necesar identificarii pe baza metodei Cohen-Coon aici:
y28 = y0+(yst-y0)*0.28;
y63 = y0+(yst-y0)*0.63;

figure()
plot(t,u,t,y);
hold on;
plot(t,yst*ones(1,length(t)),'k');
plot(t,y0*ones(1,length(t)),'k');
plot(t,y28*ones(1,length(t)),'k');
plot(t,y63*ones(1,length(t)),'k');

i52 = 518;
i62 = 942;
i72 = 1587;
t28 = t(i62)-t(i52);
t63 = t(i72)-t(i52);
T2 = 1.5*(t63-t28);
tau2 = 1.5*(t28-1/3*t63);

N = round(tau2/(t(2)-t(1)));
%numarul tactilor de intarziere = round(timp_mort/perioada de achizitie a datelor)
u_tau2 = [u(1)*ones(N,1); u(1:end-N)];
A = -1/T;
B = k/T;
C = 1;
D = 0;
sys = ss(A,B,C,D);
ysim2 = lsim(sys,u_tau2-u0,t,0)+y0;

figure()
plot(t,y,t,ysim2);
J2 = norm(y-ysim2)/sqrt(length(y));
Empn2 = norm(y-ysim2)/norm(y-mean(y))