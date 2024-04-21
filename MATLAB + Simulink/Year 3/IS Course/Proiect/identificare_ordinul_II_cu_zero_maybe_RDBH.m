load('date_RDBH.mat');
t = RusDana(:,1);
u = RusDana(:,2);
y2 = RusDana(:,4);

figure(), plot(t,u,t,y2);

%determinare k pentru y1
i1 = 131;
i2 = 102;
i3 = 136;
i4 = 102;
k = (y2(i3)-y2(i4))/(u(i1)-u(i2));

%determinare Mr & wr pentru y2
i5 = 419;
i6 = 407;
i7 = 423;
i8 = 412;
Mr = (y2(i7)-y2(i8))/(u(i5)-u(i6));
Tr = 2*(t(i5)-t(i6));
wr = 2*pi/Tr;

%determinare tita & wn pentru y2
tita = k/2/Mr;
wn = wr/sqrt(1-2*tita^2);

%determinare constanta de timp a zeroului 


%validarea datelor folosind spatiul starilor
A = [0,1;-wn^2,-2*tita*wn];
B = [0;k*wn^2*Tz];
C = [1,0];
D = 0;
ysim2 = lsim(ss(A,B,C,D),u-mean(u(i2:i1)),t,[y2(1)-mean(y2(i4:i3)),(y2(2)-y2(1))/(t(2)-t(1))-mean(y2(i4:i3))])+mean(y2(i4:i3));
figure()
plot(t,y2,t,ysim2)
J = norm(y2-ysim2)/sqrt(length(y2))
Empn = norm(y2-ysim2)/norm(y2-mean(y2))