%determinare Mr & wr pentru y1
i5 = 419;
i6 = 407;
i7 = 423;
i8 = 312;
Mr = (y1(i7)-y1(i8))/(u(i5)-u(i6));
Tr = 2*(t(i5)-t(i6));
wr = 2*pi/Tr;

%determinare tita & wn pentru y1
tita = k/2/Mr;
wn = wr/sqrt(1-2*tita^2);

%validarea datelor folosind spatiul starilor
A = [0,1;-wn^2,-2*tita*wn];
B = [0;k*wn^2];
C = [1,0];
D = 0;
ysim1 = lsim(ss(A,B,C,D),u-mean(u(i2:i1)),t,[y1(1)-mean(y1(i4:i3)),(y1(2)-y1(1))/(t(2)-t(1))-mean(y1(i4:i3))])+mean(y1(i4:i3));
figure()
plot(t,y1,t,ysim1)
J = norm(y1-ysim1)/sqrt(length(y1))
Empn = norm(y1-ysim1)/norm(y1-mean(y1))