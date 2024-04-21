load('date_RDBH.mat');
t = RusDana(:,1);
u = RusDana(:,2);
y1 = RusDana(:,3);
y2 = RusDana(:,4);
%plot(t,u,t,y1,t,y2);

figure();
subplot(2,1,1),plot(t,u,t,y1);
subplot(2,1,2),plot(t,u,t,y2);

% %determinare k pentru y1
% i1 = 131;
% i2 = 102;
% i3 = 136;
% i4 = 102;
% k = (y1(i3)-y1(i4))/(u(i1)-u(i2));
% 
% %%prima metoda
% %determinare Mr & wr pentru y1
% i5 = 396;
% i6 = 384;
% i7 = 401;
% i8 = 391;
% Mr = (y1(i7)-y1(i8))/(u(i5)-u(i6));
% Tr = 2*(t(i5)-t(i6));
% wr = 2*pi/Tr;
% 
% %determinare tita & wn pentru y1
% tita = k/2/Mr;
% wn = wr/sqrt(1-2*tita^2);
% 
% %validarea datelor folosind spatiul starilor
% A = [0,1;-wn^2,-2*tita*wn];
% B = [0;k*wn^2];
% C = [1,0];
% D = 0;
% ysim1 = lsim(ss(A,B,C,D),u-mean(u(i2:i1)),t,[y1(1)-mean(y1(i4:i3)),(y1(2)-y1(1))/(t(2)-t(1))-mean(y1(i4:i3))])+mean(y1(i4:i3));
% figure()
% plot(t,y1,t,ysim1)
% J = norm(y1-ysim1)/sqrt(length(y1));
% Empn = norm(y1-ysim1)/norm(y1-mean(y1))

% %%a doua metoda
% acolo unde faza e pi/2
% i7 = 403;
% i8 = 390;
% dt = t(i8)-t(i6);
% wn = pi/(dif perioada luata)
% phaser = dt*wn
% M1 = Ay/Au;
% tita = 1/2/M1;
% %validarea datelor folosind spatiul starilor
% A = [0,1;-wn^2,-2*tita*wn];
% B = [0;k*wn^2];
% C = [1,0];
% D = 0;
% ysim1 = lsim(ss(A,B,C,D),u,t,[y1(1),0]);
% figure()
% plot(t,y1,t,ysim1)
% J = norm(y1-ysim1)/sqrt(length(y1));
% Empn = norm(y1-ysim1)/norm(y1-mean(y1));

