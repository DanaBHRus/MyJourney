wn = 10;
tita = 0.75;
tp = pi/wn/sqrt(1-tita^2);
supra = exp(-pi*tita/sqrt(1-tita^2));
H = tf(100,[1 15 100]);
step(H)
t = 0:0.01:1;
hold on;
plot(t,0.1*ones(1,length(t)));
plot(t,0.9*ones(1,length(t)));
ts = 4/wn/tita;