%% Identificarea Sistemelor - Laboratorul 1 (2-3.10.2023) 
% Numele Prenume: Rus Dana-Bendis-Hera
% Data: 02.10.2023
% 
% Introduceti valoarile lui n si m:
n = 2
m = 2

%% Generarea datelor - A NU SE MODIFICA!
rng(n);
Te = 10/n/1000;
t = 0:Te:10/n;
t0 = m/n;
u = (0.5*m * (t>=t0))' + m/100*randn(length(t),1) + 0.1*m;
y = lsim([-n],[n/m],[1],[0],u-0.1*m,t) + 0.2*m + m/100*randn(length(t),1); 
plot(t,u,t,y)

%% Inserati codul necesar identificarii aici, utilizand semnalele t,u,y: 
i1 = 6;
i2 = 196;
u0 = mean(u(i1:i2));
y0 = mean(y(i1:i2));
i3 = 630;
i4 = 995;
ust = mean(u(i3:i4));
yst = mean(y(i3:i4));
K = (yst-y0)/(ust-u0)

i5 = 200;
y63 = 0.63*(yst-y0)+y0;
hold on;
plot(t,y63*ones(1,length(t)))

i6 = 284;
T = t(i6)-t(i5)

A = -1/T;
B = K/T;
C = 1;
D = 0;
ysim = lsim(A,B,C,D,u-u0,t,0)+y0;
figure;
plot(t,y,t,ysim)

J = norm(y-ysim)/sqrt(length(y))
Empn = norm(y-ysim)/norm(y-mean(y))