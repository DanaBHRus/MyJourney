p_u = 0:0.1:1;
x_u(1) = 0;
x_u(2) = 0;
x_u(3) = 1;
x_u(4) = 4;
x_u(5) = 10;
x_u(6) = 11;
x_u(7) = 12;
x_u(8) = 13;
x_u(9) = 14;
x_u(10) = 14;
x_u(11) = 14;
plot(p_u,x_u);

p_c = 1:-0.1:0;
x_c(1) = 14;
x_c(2) = 14;
x_c(3) = 14;
x_c(4) = 13;
x_c(5) = 13;
x_c(6) = 13;
x_c(7) = 13;
x_c(8) = 11;
x_c(9) = 4;
x_c(10) = 2;
x_c(11) = 0;
hold on;
plot(p_c,x_c);