t = scope1281(:,1);
u = scope1281(:,2);
y = scope1281(:,3);
plot(t,u,t,y);

i1 = 291;
i2 = 495;
i3 = 677;
i4 = 912;

u0 = mean(u(i1:i2));
y0 = mean(y(i1:i2));
ust = mean(u(i3:i4));
yst = mean(y(i3:i4));
k = (yst-y0)/(ust-u0);

hold on;
plot(t,yst*ones(1,length(t)));

i5 = 501;
i6 = 555; %tg intersect Gf
T = t(i6)-t(i5);

A = -1/T;
B = k/T;
C = 1;
D = 0;
sys = ss(A,B,C,D);
ysim = lsim(sys,u,t,y(1));

figure()
plot(t,y,t,ysim);
J = norm(y-ysim)/sqrt(length(y));
Empn = norm(y-ysim)/norm(y-mean(y))

