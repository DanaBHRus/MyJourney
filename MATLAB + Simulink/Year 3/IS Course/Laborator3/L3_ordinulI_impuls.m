t = scope130(:,1);
u = scope130(:,2);
y = scope130(:,3);
plot(t,u,t,y);

i1 = 227;
i2 = 498;
u0 = mean(u(i1:i2));
y0 = mean(y(i1:i2));
k = y0/u0;

i3 = 58;
i4 = 212;
xk = log(y(i3:i4)-y0);
tk = t(i3:i4);
figure()
plot(tk,xk);

alfa_reg = [sum(tk.^2) sum(tk); sum(tk) length(tk)];
beta_reg = [sum(xk.*tk); sum(xk)];
sol = alfa_reg\beta_reg;
T = -1/sol(1)

A = -1/T;
B = k/T;
C = 1;
D = 0;
sys = ss(A,B,C,D);
ysim = lsim(sys,u-u0,t,y(1))+y0;

figure()
plot(t,y,t,ysim);
J = norm(y-ysim)/sqrt(length(y));
Empn = norm(y-ysim)/norm(y-mean(y))