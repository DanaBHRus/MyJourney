x=@(t)(2*cos(pi*t-acos(-1/2)));
fplot(x, [-3,3]);
grid;
xlabel('t'),ylabel('x(t)'); title("1a")

% figure()
% x=@(t)(sin(2/3*pi*t)*(t<=0)+(1+sin(2/3*pi*t))*(t>0));
% fplot(x, [-6,6]);
% grid;
% xlabel('t'),ylabel('x(t)'); title("1b");

figure()
x=@(t)((t>=0)+sin(2/3*pi*t)); %!!!!!treapta unitate
fplot(x, [-6,6]);
grid;
xlabel('t'),ylabel('x(t)'); title("1b-simple");

figure()
n=-5:5;
x=cos(pi*n);
stem(n,x);
grid;
xlabel('t'),ylabel('x(t)'); title("1c");

figure()
%treapta unitate