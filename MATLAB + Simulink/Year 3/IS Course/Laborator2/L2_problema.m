%% Identificarea Sistemelor - Laboratorul 2 (9-10.10.2023) 
% Numele Prenume: Rus Dana-Bendis-Hera
% Data: 09.10.2023
% 
% Introduceti valoarile lui n si m:
n = 2;
m = 1;

%% Generarea datelor - A NU SE MODIFICA!
rng(n);
Te = 10/n/1000;
t = 0:Te:10/n;
t0 = m/n;
u = (0.5*m * (t>=t0))' + m/100*randn(length(t),1) + 0.1*m;
y = lsim([0 1; -100*n^2 -20*n*1/m/2],[0; m*100*n^2],[1 0],[0],u-0.1*m,t) + 0.2*m + m/100*randn(length(t),1); 
plot(t,u,t,y)
%% Inserati codul necesar identificarii aici, utilizand semnalele t,u,y:
i1 = 10;
i2 = 100;
i3 = 210;
i4 = 995;
u0 = mean(u(i1:i2));
y0 = mean(y(i1:i2));
ust = mean(u(i3:i4));
yst = mean(y(i3:i4));
k = (yst-y0)/(ust-u0);

i5 = 141;
ymax = y(i5);
suprareglaj = (ymax-yst)/(yst-y0);
tita = -log(suprareglaj)/sqrt(pi^2+log(suprareglaj)^2);

i6 = 99;
Tosc = 2*(t(i5)-t(i6));
omega_osc = 2*pi/Tosc;
omegan = omega_osc/sqrt(1-tita^2);

A = [0,1;-omegan^2,-2*tita*omegan];
B = [0;k*omegan^2];
C = [1,0];
D = 0;
ysim = lsim(ss(A,B,C,D),u-u0,t,[0,0])+y0;

figure()
plot(t,y,t,ysim)
J = norm(y-ysim)/sqrt(length(y))
Empn = norm(y-ysim)/norm(y-mean(y))