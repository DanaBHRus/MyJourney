H = tf(1, [1,1,1])

%RASPUNS LA IMPULS
figure()
impulse(H,1);
t = 0:0.1:1;
h = 2/sqrt(3)*exp(-1/2*t).*sin(sqrt(3)/2*t);
hold on;
plot(t,h,'*r');

%RASPUNS LA TREAPTA
figure()
step(H,1.5); 
t = 0:0.1:1.5;
yt = 1-exp(-1/2*t).*cos(sqrt(3)/2*t)-1/sqrt(3)*exp(-1/2*t).*sin(sqrt(3)/2*t);
hold on;
plot(t,yt,'*r');

%RASPUNS LA RAMPA
figure()
t = 0:0.1:1;
u = t;
y = lsim(H,u,t);
plot(t,y);
hold on;
yr = -1+t+exp(-1/2*t).*cos(sqrt(3)/2*t)-1/sqrt(3)*exp(-1/2*t).*sin(sqrt(3)/2*t);
plot(t,yr,'*r');