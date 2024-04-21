%% Identificarea Sistemelor - Laboratorul 1 (2-3.10.2023) 
% Numele Prenume: Rus Dana-Bendis-Hera
% Data: 06.11.2023
% 
% Introduceti valoarile lui n si m:
n = 2;
m = 2;

%% Generarea datelor - A NU SE MODIFICA!
rng(n);
Te = 10/n/1000;
t = 0:Te:10/n;
t0 = m/n;
u = (0.5*m * (t>=t0))' + m/100*randn(length(t),1) + 0.1*m;
y = lsim([-n],[n/m],[1],[0],u-0.1*m,t) + 0.2*m + m/100*randn(length(t),1); 
plot(t,u,t,y)

%% Inserati codul necesar identificarii aici, utilizand semnalele t,u,y: 
ufiltrat = medfilt1(u,11);
yfiltrat = medfilt1(y,11);

i1 = 6;
i2 = 196;
u0 = mean(ufiltrat(i1:i2));
y0 = mean(yfiltrat(i1:i2));
i3 = 630;
i4 = 995;
ust = mean(ufiltrat(i3:i4));
yst = mean(yfiltrat(i3:i4));
K = (yst-y0)/(ust-u0);

i5 = 200;
y63 = 0.63*(yst-y0)+y0;
hold on;
plot(t,y63*ones(1,length(t)))

i6 = 284;
T = t(i6)-t(i5);

A = -1/T;
B = K/T;
C = 1;
D = 0;
ysim = lsim(A,B,C,D,u-u0,t,0)+y0;
figure;
plot(t,y,t,ysim,t,yfiltrat);

J = norm(yfiltrat-ysim)/sqrt(length(yfiltrat));
Empn = norm(yfiltrat-ysim)/norm(yfiltrat-mean(yfiltrat))

figure, plot(t,ufiltrat,t,yfiltrat)
%K calculat anterior
i5 = 200; %momentul declansarii treptei
i6 = 409;
xk = log(yst-y(i5:i6));
tk = t(i5:i6);
figure()
plot(tk,xk);

alfa_reg = [sum(tk.^2) sum(tk); sum(tk) length(tk)];
beta_reg = [sum(xk.*tk'); sum(xk)];
sol = alfa_reg\beta_reg;
T = -1/sol(1);

A = -1/T;
B = K/T;
C = 1;
D = 0;
sys = ss(A,B,C,D);
ysim2 = lsim(sys,ufiltrat-u0,t,0)+y0;

figure()
plot(t,yfiltrat,t,ysim2);
J = norm(yfiltrat-ysim2)/sqrt(length(yfiltrat));
Empn = norm(yfiltrat-ysim2)/norm(yfiltrat-mean(yfiltrat))