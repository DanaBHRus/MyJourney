H = tf(4, [1,6])

%RASPUNS LA IMPULS
figure()
impulse(H,1);
t = 0:0.1:1;
h = 4*exp(-6*t);
hold on;
plot(t,h,'*r');

%RASPUNS LA TREAPTA
figure()
step(H,1.5); %numeric
t = 0:0.1:1.5;
yt = 4/6-4/6*exp(-6*t); %analitic
hold on;
plot(t,yt,'*r');

%RASPUNS LA RAMPA
figure()
t = 0:0.1:2;
u = t;
y = lsim(H,u,t); %numeric
plot(t,y);
hold on;
yr = -1/9+2/3*t+1/9*exp(-6*t);
plot(t,yr,'*r');