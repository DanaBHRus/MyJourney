[t,p]=meshgrid(0:.02*pi:3*pi, 0:.02*pi:3*pi);
figure()
surf(t,p,t/2.*sin(p));
xlabel('x'),ylabel('p');
title('t/2*sin(p)');
axis tight;
view(40,60);