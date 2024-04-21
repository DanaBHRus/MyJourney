phi1 = -pi:0.0001:pi;
lambda = 0.5878;
omega1 = 154.2236;
z = 5;
for i=1:length(phi1)
    phi2(i) = atan((lambda*sin(phi1(i)))/(1-lambda*cos(phi1(i))));
    omega2(i) = (lambda*(cos(phi1(i))-lambda))/(1-2*lambda*cos(phi1(i))+lambda^2)*omega1;
    epsilon2(i) = -(lambda*(1-lambda^2)*sin(phi1(i)))/(1-2*lambda*cos(phi1(i))+lambda^2)^2*(omega1^2);
end
plot(phi1,phi2);
grid on;
xlabel('\phi_1'),ylabel('\phi_2');
title('Unghiul de rotatie al elementului condus');
figure()
plot(phi1,omega2);
grid on;
xlabel('\phi_1'),ylabel('\omega_2');
title('Viteza unghiulara a elementului condus');
omega2max = lambda/(1-lambda)*omega1;
hold on, plot(0,omega2max,'r*');
hold off;
figure()
plot(phi1,epsilon2);
grid on;
xlabel('\phi_1'),ylabel('\epsilon_2');
title('Acceleratia unghiulara a elementului condus');
hold on, plot(0,0,'r*');
epsilon2intrare = -omega1^2*tan(pi/z);
plot(pi/50,epsilon2intrare,'g*');