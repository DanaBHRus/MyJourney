C = 13.89e-6;
L = 3.5e-3;
Rs = 15;
roots([L*C,L/Rs,1]);
H = tf(1,[L*C,L/Rs,1]);
nyquist(H)