Hdes = tf(1295.68/10,[0.1198,1,0]);
figure(),clf,nichols(Hdes);
hold on, grid on;
Mdb = 12;
M = 10^(Mdb/20);
Ts = 0.01;

t = (pi+Ts):Ts:(2*pi);
X = -M^2/(M^2-1);
Y = 0;
R = abs(M/(M^2-1));
x = X+R*cos(t);
y = Y+R*sin(t);
mag = db(sqrt(x.^2+y.^2));
phase = atan2(y,x);
plot(rad2deg(phase),mag,'r');

t = Ts:Ts:pi;
X = -M^2/(M^2-1);
Y = 0;
R = abs(M/(M^2-1));
x = X+R*cos(t);
y = Y+R*sin(t);
mag = db(sqrt(x.^2+y.^2));
phase = atan2(y,x);
plot(-360+rad2deg(phase),mag,'r'); 
shg

Ho = feedback(Hdes,1);
figure(), step(Ho); 
figure(), bode(Ho,{1e-1,1e5});