clc
clear
%A=[4,2,1,3;-1,2,-1,2;3,3,7,-4;0,1,2,3];
%A=[4,1,-1;-1,3,1;2,2,5];
%%A=[2,-1,1;2,2,2;-1,-1,2];
%%b=[-1,4,5];
%b=[10,2,9,6];
%b=[5,-4,1];
tol=10^(-10);
A=[5,-1,0,0;-1,5,-1,0;0,-1,5,-1;0,0,-1,5];
b=[4,3,3,4];
n=length(b);
x0=zeros(1,n);
[rez,nr]=Jacobi(A,b,tol,x0);
[rez,nr]=GS(A,b,tol,x0);