A=[-1 2 -3;5 -1 2;-4 -1 2];
b=[-6;9;0];
% X=inv(A)*b;
% disp(X);
X=A\b;
disp(X);