T = 1e-3;
number_points=1000;
out = generareSPAB(3,1,3,number_points,50);
t = 0:T:(number_points-1)*T;
plot(t,out);