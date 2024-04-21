load('date_RDBH.mat');
t = RusDana(:,1);
u = RusDana(:,2);
y2 = RusDana(:,4);

figure(), plot(t,u,t,y2);

%determinare k pentru y2
k = mean(y2)/mean(u);
%determinare primul set de parametrii
i5 = 419;
i6 = 408;
i7 = 423;
i8 = 412;
Mr = (y2(i7)-y2(i8))/(u(i5)-u(i6));
Tr = 2*(t(i5)-t(i6));
wr = 2*pi/Tr;

%determinare tita & wn pentru y2
tita = sqrt((Mr-sqrt(Mr^2-1))/2/Mr)/k;
wn = wr/sqrt(1-2*tita^2)/k;

%determinare constanta de timp a zeroului 
i1 = 408;
i2 = 412;
dTr = t(i1)-t(i2);
%tita ord II

Tz = tan(atan((1-2*tita^2)^(1/tita)-dTr*wr)/wr);
%Tz = 2.4*10^-6;
y2M = y2(i7) + Tz*(y2(i7)-y2(i7-1))/dTr;
Mr_c = (y2M-y2(i8))/(u(i5)-u(i6));
tita_c = sqrt((Mr_c-sqrt(Mr_c^2-1))/2/Mr_c)/k;
wn_c = wr/sqrt(1-2*tita_c^2)/k;
Tz_c = tan(atan((1-2*tita_c^2)^(1/tita_c)-dTr*wr)/wr);


%!!RECALCULARE MAXIM rezonanta
%vezi formule
%eroare de aprox 14% la prof 

%validarea datelor folosind spatiul starilor
A = [0,1;-wn_c^2,-2*tita_c*wn_c];
B = k*[Tz;wn_c^2];
C = [1,0];
D = 0;
ysim2 = lsim(ss(A,B,C,D),u-mean(u),t,[y2(1)-mean(y2),(y2(2)-y2(1))/(t(2)-t(1))-mean(y2)])+mean(y2);
figure()
plot(t,y2,t,ysim2);
J = norm(y2-ysim2)/sqrt(length(y2));
Empn = norm(y2-ysim2)/norm(y2-mean(y2))

%%
% k = 1.0157;
% tita_c = 0.3749;
% wn_c = 6.73*10^3;
% Tz = 2.40*10^-6;
% A = [0,1;-wn_c^2,-2*tita_c*wn_c];
% B = k*[Tz;wn_c^2];
% C = [1,0];
% D = 0;
% ysim2 = lsim(ss(A,B,C,D),u-mean(u),t,[y2(1)-mean(y2),(y2(2)-y2(1))/(t(2)-t(1))-mean(y2)])+mean(y2);
% figure()
% plot(t,y2,t,ysim2);
% J = norm(y2-ysim2)/sqrt(length(y2));
% Empn = norm(y2-ysim2)/norm(y2-mean(y2))
% 
% %%
% Num = k*wn*[Tz,1];
% Den = [1,2*tita*wn,wn^2];
% Ts = 0; %SC
% Ms = idpoly(sys(A,B,C,D));
% 
% compare(d_identificare,)

% k = 1.0157;
% tita = 0.3749;
% wn = 6.73*10^3;
% Tz = 2.40*10^-6;