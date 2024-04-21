% H = tf([10,10],[1,40]);
% H = tf([10,10],[-1,40]);
% H = tf([1,1],[-1,40]);
% H = tf([1,2],conv([1,10,0],[1,20]))
% H = tf([5,2,1],conv([1,-1,0],[1,-1]))
H = 1/2*tf([1,9],[1,5],'iodelay',0.1)
nyquist(H)
figure(),bode(H)

%confirmarea stabilitatii
Ho = feedback(H,1);
pole(Ho)