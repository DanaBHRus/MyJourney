%% Identificarea Sistemelor - Laboratorul 1 (2-3.10.2023) 
% Numele Prenume: Rus Dana-Bendis-Hera
% Data: 16.10.2023
% 
% Introduceti valorile lui n si m:
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
%% Inserati codul necesar identificarii aici, utilizand semnalele t,u,y: 
i1 = 5;
i2 = 489;
i3 = 4523;
i4 = 9985;
u0 = mean(u(i1:i2));
y0 = mean(y(i1:i2));
ust = mean(u(i3:i4));
yst = mean(y(i3:i4));
k = (yst-y0)/(ust-u0);
hold on
plot(t,yst*ones(1,length(y)),'k');

i5 = 628;
i6 = 1991;
xk = log(yst-y(i5:i6));
tk = t(i5:i6);
figure()
plot(tk,xk);

alfa_reg = [sum(tk.^2) sum(tk); sum(tk) length(tk)];
beta_reg = [sum(xk.*tk'); sum(xk)];
sol = alfa_reg\beta_reg;
T1 = -1/sol(1);

i7 = 3475;
i8 = 3477;
xk2 = log(yst-y(i7:i8)'-k*exp(-t(i7:i8)/T1));
tk2 = t(i7:i8);
figure()
plot(tk2,xk2);

alfa_reg2 = [sum(tk2.^2) sum(tk2); sum(tk2) length(tk2)];
beta_reg2 = [sum(xk2.*tk2); sum(xk2)];
sol2 = alfa_reg2\beta_reg2;
T2 = -1/sol2(1);

A = [0 1; -1/T1/T2 -1/T1-1/T2];
B = [0; k/T1/T2];
C = [1 0];
D = 0;
sys = ss(A,B,C,D);
ysim = lsim(sys,u-u0,t,[0 0])+y0;

figure()
plot(t,y,t,ysim);
J = norm(y-ysim)/sqrt(length(y));
Empn = norm(y-ysim)/norm(y-mean(y))