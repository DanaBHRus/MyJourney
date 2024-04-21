num=[1,11 ,30 ]; den=[1, 9, 26, 24] ;
b2=1; b1=11; b0=30;
a2=9; a1=26; a0=24;
[A,b,c,d] = tf2ss(num,den); %FCC
sistem=ss(A,b,c,d);
x0=[0,0,0]; 
t=0:0.01:5; u=ones(1, length(t)); %treapta
[y,t,x]=lsim(sistem,u,t,x0);
subplot(121); plot(t,y); legend('y');grid;
subplot(122); plot(t,x); legend('x1','x2','x3');grid;