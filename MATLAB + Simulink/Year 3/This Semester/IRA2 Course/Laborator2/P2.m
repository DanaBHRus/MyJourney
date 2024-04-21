close all

H = tf(25,[1,6,5,0]);
D = 1;
Ho = feedback(H*D,1);
impulse(Ho);
figure, step(Ho);
t = 0:0.1:30;
figure, lsim(Ho,t,t);

%%zoh
Te1 = 0.01;
Hz1 = c2d(H,Te1,'zoh');
Ho1 = feedback(Hz1*D,1);
figure, impulse(Ho), hold on, impulse(Ho1);
figure, step(Ho), hold on, step(Ho1);
t1 = 0:Te1:30;
figure, lsim(Ho,t,t), hold on, lsim(Ho1,t1,t1);

Te2 = 0.1;
Hz2 = c2d(H,Te2,'zoh');
Ho2 = feedback(Hz2*D,1);
figure, impulse(Ho), hold on, impulse(Ho2);
figure, step(Ho), hold on, step(Ho2);
t2 = 0:Te2:30;
figure, lsim(Ho,t,t), hold on, lsim(Ho2,t2,t2);

Te3 = 1;
Hz3 = c2d(H,Te3,'zoh');
Ho3 = feedback(Hz3*D,1);
figure, impulse(Ho), hold on, impulse(Ho3);
figure, step(Ho), hold on, step(Ho3);
t3 = 0:Te3:30;
figure, lsim(Ho,t,t), hold on, lsim(Ho3,t3,t3);

%%Tustin
Te1 = 0.01;
Ht1 = c2d(H,Te1,'tustin');
Ho4 = feedback(Ht1*D,1);
figure, impulse(Ho), hold on, impulse(Ho4);
figure, step(Ho), hold on, step(Ho4);
t1 = 0:Te1:30;
figure, lsim(Ho,t,t), hold on, lsim(Ho4,t1,t1);

Te2 = 0.1;
Ht2 = c2d(H,Te2,'tustin');
Ho5 = feedback(Ht2*D,1);
figure, impulse(Ho), hold on, impulse(Ho5);
figure, step(Ho), hold on, step(Ho5);
t2 = 0:Te2:30;
figure, lsim(Ho,t,t), hold on, lsim(Ho5,t2,t2);

Te3 = 1;
Ht3 = c2d(H,Te3,'tustin');
Ho6 = feedback(Ht3*D,1);
figure, impulse(Ho), hold on, impulse(Ho6);
figure, step(Ho), hold on, step(Ho6);
t3 = 0:Te3:30;
figure, lsim(Ho,t,t), hold on, lsim(Ho6,t3,t3);

%%ideal, Te va fi 0.02 - respectand 1/10*Tmin
%%
Te = 0.02;
Hz = c2d(H,Te,'zoh');
Hoz = feedback(Hz*D,1);
figure, impulse(Ho), hold on, impulse(Hoz);
figure, step(Ho), hold on, step(Hoz);
tzt = 0:Te:30;
figure, lsim(Ho,t,t), hold on, lsim(Hoz,tzt,tzt);

Ht = c2d(H,Te,'tustin');
Hot = feedback(Ht*D,1);
figure, impulse(Ho), hold on, impulse(Hot);
figure, step(Ho), hold on, step(Hot);
tzt = 0:Te:30;
figure, lsim(Ho,t,t), hold on, lsim(Hot,tzt,tzt);

%%
figure, impulse(Ho)
hold on, impulse(Ho1)
figure, impulse(Ho2)
figure, impulse(Ho3)
figure, step(Ho)
hold on, step(Ho1)
figure, step(Ho2)
figure, step(Ho3)
figure, lsim(Ho,t,t)
hold on, lsim(Ho1,t1,t1), lsim(Ho2,t2,t2);
figure, lsim(Ho3,t3,t3)
figure, impulse(Ho)
hold on, impulse(Ho4), impulse(Ho5), impulse(Ho6);
figure, step(Ho)
hold on, step(Ho4), step(Ho5), step(Ho6);
figure, lsim(Ho,t,t)
hold on, lsim(Ho4,t1,t1), lsim(Ho5,t2,t2), lsim(Ho6,t3,t3);