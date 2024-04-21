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

%identificare ARX
m_arx = arx(data_id,[1,1,1]); %poli,zero+1,intarziere

%validare
figure(),resid(m_arx,data_vd);
%grad de suprapunere
figure(),compare(m_arx,data_vd);

H = tf(m_arx.B,m_arx.A,Te,'variable','z^-1');

%identificare ARMAX
m_armax = armax(data_id,[1,1,2,1]);
figure(),resid(m_armax,data_vd);
figure(),compare(m_armax,data_vd);
H1 = tf(m_armax.B,m_armax.A,Te,'variable','z^-1')
