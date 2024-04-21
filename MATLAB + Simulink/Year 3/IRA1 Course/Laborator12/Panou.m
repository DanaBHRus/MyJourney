H = tf(1,conv([1,0],[1,2]));

kp = 5;
step(feedback(kp*H,1));

kp2 = 10;
figure, step(feedback(kp2*H,1));

kp3 = 5;
Td3 = 0.3;
HPD3 = kp3 + tf([Td3,0],[Td3/10,1]);
figure, step(feedback(HPD3*H,1));

kp4 = 5;
Td4 = 0.8;
HPD4 = kp4 + tf([Td4,0],[Td4/10,1]);
figure, step(feedback(HPD4*H,1));

kp5 = 5;
Ti5 = 2;
HPI5 = kp5 + tf(1,[Ti5,0]);
figure, step(feedback(HPI5*H,1));

kp6 = 5;
Ti6 = 3.5;
HPI6 = kp6 + tf(1,[Ti6,0]);
figure, step(feedback(HPI6*H,1));
