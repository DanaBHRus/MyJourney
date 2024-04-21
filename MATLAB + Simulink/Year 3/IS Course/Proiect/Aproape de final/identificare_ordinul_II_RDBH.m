load('date_RDBH.mat');
t = RusDana(:,1);
u = RusDana(:,2);
y1 = RusDana(:,3);

figure(), plot(t,u,t,y1);

%determinare k pentru y1
k = mean(y1)/mean(u);

%determinare Mr & wr pentru y1
i5 = 396;
i6 = 384;
i7 = 401;
i8 = 391;
Mr = (y1(i7)-y1(i8))/(u(i5)-u(i6));
Tr = 2*(t(i5)-t(i6));
wr = 2*pi/Tr;

%determinare tita & wn pentru y1
%tita = k/2/Mr;
tita = sqrt((Mr-sqrt(Mr^2-1))/2/Mr)/k;
wn = wr/sqrt(1-2*tita^2)/k;

%validarea datelor folosind spatiul starilor
A = [0,1;-wn^2,-2*tita*wn];
B = [0;k*wn^2];
C = [1,0];
D = 0;
ysim1 = lsim(ss(A,B,C,D),u-mean(u),t,[y1(1)-mean(y1),(y1(2)-y1(1))/(t(2)-t(1))-mean(y1)])+mean(y1);
figure()
plot(t,y1,t,ysim1)
J = norm(y1-ysim1)/sqrt(length(y1));
Empn = norm(y1-ysim1)/norm(y1-mean(y1));

figure(), bode(tf(wn^2,[1,2*tita*wn,wn^2]));

%%mai trebuie validat cu BODE
%pe octava 
%Twn, apoi caut wn/2 - Twn2 
%db(M_wn2/M_wn) =~ -12db pe octava
%decada = 3 octave 
