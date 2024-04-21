H = tf(600*[1,500],conv([1,300],[1,600]));
Te = 1.6667e-04;
Hd = c2d(H,Te,'zoh');
step(H), hold on, step(Hd);

format long
[num,den] = tfdata(Hd,'v')

Hd5 = tf([0.09675,-0.08901],[1,-1.85606,0.86070],Te);
Hd4 = tf([0.0967,-0.0890],[1,-1.8560,0.8607],Te);
Hd3 = tf([0.096,-0.089],[1,-1.856,0.860],Te);

step(Hd,Hd5,Hd4,Hd3);
legend('Hd','Hd5','Hd4','Hd3')