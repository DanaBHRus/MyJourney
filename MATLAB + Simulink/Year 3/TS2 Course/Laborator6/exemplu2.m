% Hdes = tf([8,72],[1,50,0],'iodelay',2)
% bode(Hdes)
% figure, nichols(Hdes)
% Hdes = tf([8,72]/10,[1,50,0],'iodelay',2)
% bode(Hdes)
% figure, nichols(Hdes)

omega = 0.8225;
result = pi/2+atan(omega/9)-atan(omega/50)-2*omega