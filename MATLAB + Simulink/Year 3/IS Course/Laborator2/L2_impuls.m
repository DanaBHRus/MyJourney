t = impuls0(:,1);
u = impuls0(:,2);
y = impuls0(:,4);
plot(t,u,t,y);

i1 = 423;
i2 = 498;
u0 = mean(u(i1:i2));
y0 = mean(y(i1:i2));
k = y0/u0;

hold on;
plot(t,y0*ones(1,length(t)));
i3 = 530;
i4 = 627;
i5 = 733;
Aplus = sum(abs(y(i3:i4)-y0))*(t(2)-t(1));
Aminus = sum(abs(y(i4:i5)-y0))*(t(2)-t(1));
suprareglaj = Aminus/Aplus;
tita = -log(suprareglaj)/sqrt(pi^2+log(suprareglaj)^2);

i6 = 559;
i7 = 671;
Tosc = 2*(t(i7)-t(i6));
omega_osc = 2*pi/Tosc;
omegan = omega_osc/sqrt(1-tita^2);

A = [0,1;-omegan^2,-2*tita*omegan];
B = [0;k*omegan^2];
C = [1,0];
D = 0;
ysim = lsim(ss(A,B,C,D),u-u0,t,[y(1)/2,(y(2)-y(1))/(2*(t(2)-t(1)))])+y0;

figure()
plot(t,y,t,ysim)
J = norm(y-ysim)/sqrt(length(y))
Empn = norm(y-ysim)/norm(y-mean(y))