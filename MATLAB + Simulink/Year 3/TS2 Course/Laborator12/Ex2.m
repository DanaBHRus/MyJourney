den = conv([1,5,6],[1,8]);
num = [-8,7,-6,5];
H = tf(num,den);

[R,P,K] = residue(num,den);
Ad = diag(P);
Bd = ones(3,1);
Cd = R';
D = K;

step(H,ss(Ad,Bd,Cd,D));

%%
Ad2 = Ad;
Bd2 = Cd';
Cd2 = Bd';

figure, step(ss(Ad,Bd,Cd,D),ss(Ad2,Bd2,Cd2,D))