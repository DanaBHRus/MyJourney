t=[-15 15];

x1=@(t) (((-t+2)*((t>=0)&(t<=4)))+((-t-2)*((t<0)&(t>=-4))));
subplot(2,3,1);
fplot(x1,t);
xlabel('t'),ylabel('x1(t)');
title('x1(t)');
grid on
axis tight

x11=@(t) (((-t+2+1)*((t>=0+1)&(t<=4+1)))+((-t-2+1)*((t<0+1)&(t>=-4+1))));
subplot(2,3,2);
fplot(x11,t);
xlabel('t'),ylabel('x1(t-1)');
title('x1(t-1)');
grid on
axis tight

x12=@(t) (((-t+2-1)*((t>=0-1)&(t<=4-1)))+((-t-2-1)*((t<0-1)&(t>=-4-1))));
subplot(2,3,3);
fplot(x12,t);
xlabel('t'),ylabel('x1(t+1)');
title('x1(t+1)');
grid on
axis tight

x13=@(t) (((-2*t+2)*((t>=0)&(t<=4/2)))+((-2*t-2)*((t<0)&(t>=-4/2))));
subplot(2,3,4);
fplot(x13,t);
xlabel('t'),ylabel('x1(2t)');
title('x1(2t)');
grid on
axis tight

x14=@(t) (((-t/2+2)*((t>=0)&(t<=4*2)))+((-t/2-2)*((t<0)&(t>=-4*2))));
subplot(2,3,5);
fplot(x14,t);
xlabel('t'),ylabel('x1(t/2)');
title('x1(t/2)');
grid on
axis tight


figure()
n=-10:0.25:10;

x2=zeros(length(n));
for i=1:length(n)
    if n(i)<=0 && n(i)>=-4
        x2(i)=n(i)/2+1;
    end
    if n(i)>0 && n(i)<=4
        x2(i)=-n(i)/2+1;
    end
end
subplot(2,3,1);
stem(n,x2);
xlabel('n'),ylabel('x2[n]');
title('x2[n]');
grid on
axis tight

x2=zeros(length(n));
for i=1:length(n)
    if n(i)<=0+1 && n(i)>=-4+1
        x2(i)=(n(i)-1)/2+1;
    end
    if n(i)>0+1 && n(i)<=4+1
        x2(i)=-(n(i)-1)/2+1;
    end
end
subplot(2,3,2);
stem(n,x2);
xlabel('n'),ylabel('x2[n-1]');
title('x2[n-1]');
grid on
axis tight

x2=zeros(length(n));
for i=1:length(n)
    if n(i)<=0-1 && n(i)>=-4-1
        x2(i)=(n(i)+1)/2+1;
    end
    if n(i)>0-1 && n(i)<=4-1
        x2(i)=-(n(i)+1)/2+1;
    end
end
subplot(2,3,3);
stem(n,x2);
xlabel('n'),ylabel('x2[n+1]');
title('x2[n+1]');
grid on
axis tight

x2=zeros(length(n));
for i=1:length(n)
    if n(i)<=0 && n(i)>=-4/2
        x2(i)=(2*n(i))/2+1;
    end
    if n(i)>0 && n(i)<=4/2
        x2(i)=-(2*n(i))/2+1;
    end
end
subplot(2,3,4);
stem(n,x2);
xlabel('n'),ylabel('x2[2n]');
title('x2[2n]');
grid on
axis tight

x2=zeros(length(n));
for i=1:length(n)
    if n(i)<=0 && n(i)>=-4*2
        x2(i)=(n(i)/2)/2+1;
    end
    if n(i)>0 && n(i)<=4*2
        x2(i)=-(n(i)/2)/2+1;
    end
end
subplot(2,3,5);
stem(n,x2);
xlabel('n'),ylabel('x2[n/2]');
title('x2[n/2]');
grid on
axis tight
