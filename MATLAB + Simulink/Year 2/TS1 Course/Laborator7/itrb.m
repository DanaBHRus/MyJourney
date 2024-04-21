H = tf(1, [1,2,0])

%RASPUNS LA IMPULS
figure()
impulse(H,1);
t = 0:0.1:1;
h = 1/2-1/2*exp(-2*t);
hold on;
plot(t,h,'*r');

%RASPUNS LA TREAPTA
figure()
step(H,1.5); 
t = 0:0.1:1.5;
yt = -1/4+1/2*t+1/4*exp(-2*t);
hold on;
plot(t,yt,'*r');

%RASPUNS LA RAMPA
figure()
t = 0:0.1:1;
u = t;
y = lsim(H,u,t);
plot(t,y);
hold on;
yr = 1/8-1/4*t+1/4*t.^2-1/8*exp(-2*t);
plot(t,yr,'*r');