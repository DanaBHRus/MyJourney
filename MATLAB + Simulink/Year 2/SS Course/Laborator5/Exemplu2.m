u = @(t)(t>=0);
x1 = @(u,t)((u(t)-u(t-1)).*t);
t = -1:0.01:3;
subplot(211),plot(t,x1(u,t));
axis tight; grid; xlabel('t'),ylabel('x1(t)');
y1 = @(u,t)(u(t)-u(t-1));
subplot(212),plot(t,y1(u,t));
axis tight; grid; xlabel('t'),ylabel('y1(t)');

figure()
x2 = x1(u,t)+x1(u,t-1);
subplot(211),plot(t,x2);
axis tight; grid; xlabel('t'),ylabel('x2(t)');
y2 = y1(u,t)+y1(u,t-1);
subplot(212),plot(t,y2);
axis tight; grid; xlabel('t'),ylabel('y2(t)');
