H1=tf(100,[1 14 93 530]);
zpk(H1);
pole(H1);
zero(H1);
H2=zpk([],[-2-7j -2+7j -10],100);