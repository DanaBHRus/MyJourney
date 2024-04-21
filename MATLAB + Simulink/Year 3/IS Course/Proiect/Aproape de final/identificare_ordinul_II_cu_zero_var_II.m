load('date_RDBH.mat');
t = RusDana(:,1);
u = RusDana(:,2);
y2 = RusDana(:,4);

figure(), plot(t,u,t,y2);

%determinare k pentru y2
k = mean(y2)/mean(u);

i5 = 419;
i6 = 407;
i7 = 423;
i8 = 412;
Mr = (y2(i7)-y2(i8))/(u(i5)-u(i6));
Tr = 2*(t(i5)-t(i6));
wr = 2*pi/Tr;

tita = sqrt((Mr-sqrt(Mr^2-1))/2/Mr)/k;
wn = wr/sqrt(1-2*tita^2);
phrez = t(i7)-t(i5);
Tz = tan(phrez+atan(sqrt(1-2*tita^2)/tita));

titar = sqrt(tita^2+(1/2/Tz/wn)^2);
wnr = wn/sqrt(1-(1/2/Tz/wn)^2);

A = [0,1;-wnr^2,-2*titar*wnr];
B = [k*Tz;k*wnr^2];
C = [1,0];
D = 0;
ysim2 = lsim(ss(A,B,C,D),u-mean(u),t,[y2(1)-mean(y2),(y2(2)-y2(1))/(t(2)-t(1))-mean(y2)])+mean(y2);
figure()
plot(t,y2,t,ysim2);
J = norm(y2-ysim2)/sqrt(length(y2));
Empn = norm(y2-ysim2)/norm(y2-mean(y2))
