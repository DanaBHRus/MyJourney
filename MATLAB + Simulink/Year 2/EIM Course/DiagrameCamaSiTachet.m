phiu = deg2rad(100);
phiR = deg2rad(80);
phic = deg2rad(100);
phir = deg2rad(80);
h = 19.5; %mm
%urcare sinusoidala
phi = 0:0.0001:phiu;
for i=1:length(phi)
    su(i) = h*(phi(i)/phiu-1/(2*pi)*sin(2*pi/phiu*phi(i)));
    vu(i) = h/phiu*(1-cos(2*pi/phiu*phi(i)));
    au(i) = 2*pi*h/phiu^2*sin(2*pi/phiu*phi(i));
end
figure(1),plot(phi,su,'k'); hold on;
figure(2),plot(phi,vu,'k'); hold on;
figure(3),plot(phi,au,'k'); hold on;
%repaus superior
phi = phiu:0.0001:phiu+phiR;
for j=1:length(phi)
    sR(j) = su(i);
    vR(j) = vu(i);
    aR(j) = au(i);
end
figure(1),plot(phi,sR,'m');
figure(2),plot(phi,vR,'m');
figure(3),plot(phi,aR,'m');
%coborare cosinusoidala
phi = 0:0.0001:phic;
l = length(phi);
for i=1:l
    sc(l-i+1) = h/2*(1-cos((pi/phic)*phi(i)));
    vc(l-i+1) = pi*h/(2*phic)*sin((pi/phic)*phi(i));
    ac(l-i+1) = pi^2*h/(2*phic^2)*cos((pi/phic)*phi(i));
end
figure(1),plot(phi+phiu+phiR,sc,'b');
figure(2),plot(phi+phiu+phiR,-vc,'b');
figure(3),plot(phi+phiu+phiR,ac,'b');
line([phiu+phiR,phiu+phiR],[aR(j),ac(1)],'Color','yellow');
%repaus inferior
phi = phiu+phiR+phic:0.0001:2*pi;
for j=1:length(phi)
    sr(j) = su(1);
    vr(j) = vu(1);
    ar(j) = au(1);
end
figure(1),plot(phi,sr,'g');
figure(2),plot(phi,vr,'g');
figure(3),plot(phi,ar,'g');
line([phiu+phiR+phic,phiu+phiR+phic],[ac(l),ar(j)],'Color','yellow');
%adnotatii
figure(1)
grid on; axis tight;
xlabel('\phi'),ylabel('s(\phi)');
title('Diagrama de variatie a spatiului');
hold off;
figure(2)
grid on; axis tight;
xlabel('\phi'),ylabel('v/omega(\phi)');
title('Diagrama de variatie a vitezei reduse');
hold off;
figure(3)
grid on; axis tight;
xlabel('\phi'),ylabel('a/omega^2(\phi)');
title('Diagrama de variatie a acceleratiei reduse');
hold off;