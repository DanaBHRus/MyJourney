t = scope128(:,1);
u = scope128(:,2);
y = scope128(:,3);
plot(t,u,t,y);

i1 = 285;
i2 = 495;
i3 = 681;
i4 = 910;
u0 = mean(u(i1:i2));
y0 = mean(y(i1:i2));
ust = mean(u(i3:i4));
yst = mean(y(i3:i4));
k = (yst-y0)/(ust-u0);

i5 = 503;
i6 = 691;
xk = log(yst-y(i5:i6));
tk = t(i5:i6);
figure()
plot(tk,xk);

alfa_reg = [sum(tk.^2) sum(tk); sum(tk) length(tk)];
beta_reg = [sum(xk.*tk); sum(xk)];
sol = alfa_reg\beta_reg;
T = -1/sol(1);

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