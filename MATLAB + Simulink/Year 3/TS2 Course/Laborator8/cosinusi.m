f1 = 1;
f2 = 9;
f3 = 11;
Te = 0.1/100;
t = 0:Te:1;
x1 = cos(2*pi*f1*t);
x2 = cos(2*pi*f2*t);
x3 = cos(2*pi*f3*t);
plot(t,x1,'--bo',t,x2,'-ro',t,x3,'-ko');

%c (s) - d (z) => c2d / c2dm
%d - c => d2c / d2cm
