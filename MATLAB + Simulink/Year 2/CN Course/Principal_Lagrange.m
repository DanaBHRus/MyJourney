clear 
close all 
clc 

y=-5:0.5:5;
valf=f(y); %valori exacte

xn=-5:0.5:5;
valfn=f(xn); %valori functie in noduri

x=y;
n=length(xn)-1;
PL=zeros(1,length(x));
for i=1:length(y)
    Vn=LagrangeFu(xn,x(i),n)
    PL(i)=sum(Vn.*valfn);
end

%PL=0;
% for i=1:n+1
%     PL=PL+Vn(i)*valfn(i);
% end

figure(1)
hold on
plot(y,valf,'Color','r','LineWidth',2)
plot(xn,valfn,'b*')
plot(x,PL,'go')