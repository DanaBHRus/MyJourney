t = treapta0(:,1);
u = treapta0(:,2);
y = treapta0(:,4);
plot(t,u,t,y);

i1 = 308;
i2 = 490;
i3 = 651;
i4 = 828;
u0 = mean(u(i1:i2));
y0 = mean(y(i1:i2));
ust = mean(u(i3:i4));
yst = mean(y(i3:i4));
k = (yst-y0)/(ust-u0);

i5 = 580;
ymax = y(i5);
suprareglaj = (ymax-yst)/(yst-y0);
tita = -log(suprareglaj)/sqrt(pi^2+log(suprareglaj)^2);

i6 = 501;
Tosc = 2*(t(i5)-t(i6));
omega_osc = 2*pi/Tosc;
omegan = omega_osc/sqrt(1-tita^2);

A = [0,1;-omegan^2,-2*tita*omegan];
B = [0;k*omegan^2];
C = [1,0];
D = 0;
ysim = lsim(ss(A,B,C,D),u,t,[y(1),0]);

figure()
plot(t,y,t,ysim)
J = norm(y-ysim)/sqrt(length(y))
Empn = norm(y-ysim)/norm(y-mean(y))