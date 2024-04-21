t = double(dat_0p7.X.Data);
y = double(dat_0p7.Y(1).Data)';
w = double(dat_0p7.Y(2).Data)';
u = double(dat_0p7.Y(3).Data)';

plot(t,u,t,w,t,y);
figure()
subplot(211), plot(t,u);
subplot(212), plot(t,w);

Te = t(2)-t(1);
i1 = 972;
i2 = 3075;
i3 = 5824;
i4 = 7983;
data_id = iddata(w(i1:i2),u(i1:i2),Te);
data_vd = iddata(w(i3:i4),u(i3:i4),Te);

%identificare MVI
m_iv = iv4(data_id,[1,1,1]);
%validare
figure, resid(data_vd,m_iv);
figure, compare(data_vd,m_iv);

%identificare OE
m_oe = oe(data_id,[1,1,1]); %nB, nF, nd
%validare
figure, resid(data_vd,m_oe);
figure, compare(data_vd,m_oe);
Hd_oe = tf(m_oe.B,m_oe.F,Te,'variable','z^-1')