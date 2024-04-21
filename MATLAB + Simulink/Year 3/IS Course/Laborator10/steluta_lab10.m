load('Scope_107.mat');

t = double(data.Scope_107.X.Data);
y = double(data.Scope_107.Y(1).Data)';
w = double(data.Scope_107.Y(2).Data)';
u = double(data.Scope_107.Y(3).Data)';

plot(t,u,t,w,t,y);
figure()
subplot(211), plot(t,u);
subplot(212), plot(t,w);

Te = t(2)-t(1);
i1 = 3160;
i2 = 3630;
i3 = 3631;
i4 = 4113;

data_id_thwu = iddata([w(i1:i2) y(i1:i2)],u(i1:i2),Te);
data_vd_thwu = iddata([w(i3:i4) y(i3:i4)],u(i3:i4),Te);

fd = 14; %factor de decimare
Ted = Te*fd;
data_id_dec = iddata([w(i1:fd:i2) y(i1:fd:i2)],u(i1:fd:i2),Ted);
data_vd_dec = iddata([w(i3:fd:i4) y(i3:fd:i4)],u(i3:fd:i4),Ted);

%model discret
n4sid(data_id_thwu,1:15);
m_n4sid = n4sid(data_id_thwu,2);
figure(),resid(m_n4sid,data_vd_thwu);
figure(),compare(m_n4sid,data_vd_thwu);
H_n4sid = tf(m_n4sid)

%model discret cu date decimate
m_n4sid_dec = n4sid(data_id_dec,2);
figure(),resid(m_n4sid_dec,data_vd_dec);
figure(),compare(m_n4sid_dec,data_vd_dec);
H_n4sid_dec = tf(m_n4sid_dec)

%model continuu
m_ssest = ssest(data_id_thwu,2);
figure(),resid(m_ssest,data_vd_thwu);
figure(),compare(m_ssest,data_vd_thwu);
H_seest = tf(m_ssest)

%model continuu cu date decimate
m_ssest_dec = ssest(data_id_dec,2);
figure(),resid(m_ssest_dec,data_vd_dec);
figure(),compare(m_ssest_dec,data_vd_dec);
H_seest_dec = tf(m_ssest_dec)