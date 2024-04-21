t = -3:0.01:4;
u = @(t)(t>=0);
x1 = @(t)(u(t)-u(t-2));
y1 = @(t)((t.*(u(t)-u(t-1))) + ((2-t).*(u(t-1)-u(t-2))));
subplot(211),plot(t,x1(t));
axis tight; xlabel('t'),ylabel('x1(t)'); grid;
subplot(212),plot(t,y1(t));
axis tight; xlabel('t'),ylabel('y1(t)'); grid;

figure()
x2 = x1(t+1) + x1(t);
y2 = y1(t+1) + y1(t);
subplot(211),plot(t,x2);
axis tight; xlabel('t'),ylabel('x2(t)'); grid;
subplot(212),plot(t,y2);
axis tight; xlabel('t'),ylabel('y2(t)'); grid;

figure()
x3 = x1(t+2) + x1(t-2);
y3 = y1(t+2) + y1(t-2);
subplot(211),plot(t,x3);
axis tight; xlabel('t'),ylabel('x3(t)'); grid;
subplot(212),plot(t,y3);
axis tight; xlabel('t'),ylabel('y3(t)'); grid;

figure()
x4 = -x1(t+2);
y4 = -y1(t+2);
subplot(211),plot(t,x4);
axis tight; xlabel('t'),ylabel('x4(t)'); grid;
subplot(212),plot(t,y4);
axis tight; xlabel('t'),ylabel('y4(t)'); grid;

figure()
x5 = -x1(t);
y5 = -y1(t);
subplot(211),plot(t,x5);
axis tight; xlabel('t'),ylabel('x5(t)'); grid;
subplot(212),plot(t,y5);
axis tight; xlabel('t'),ylabel('y5(t)'); grid;
