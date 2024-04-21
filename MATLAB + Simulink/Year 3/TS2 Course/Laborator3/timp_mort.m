H = tf(4,[1,5,0],'iodelay',0.2);
nyquist(H)

H1 = tf([5,20],[2,1],'iodelay',0.3);
nyquist(H1)