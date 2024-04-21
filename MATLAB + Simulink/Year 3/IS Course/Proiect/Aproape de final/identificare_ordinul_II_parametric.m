%%
load('date_RDBH.mat');
t = RusDana(:,1);
u = RusDana(:,2);
y1 = RusDana(:,3);

figure(), plot(t,u,t,y1);

%pregatire date
Te = t(2)-t(1);
date_identificare = iddata(y1,u,Te);
date_validare = iddata(y1,u,Te);

%identificare folosind ARMAX
m_armax = armax(date_identificare,[2,1,3,1]); %2 poli, fara zero, cu un tact de intarziere
%validare
figure(),resid(date_validare,m_armax,4);
figure(),compare(date_validare,m_armax);
%H = tf(m_armax.B,m_armax.A,Te,'variable','z^-1');

% identificare folosind OE
m_oe = oe(date_identificare,[1,2,1]); %fara zero, 2 poli, cu un tact de intarziere
%validare
figure(),resid(date_validare,m_oe,4);
figure(),compare(date_validare,m_oe);

%identificare folosind PEM
m_pem = pem(date_identificare,2);
%validare
figure(),resid(date_validare,m_pem,4);
figure(),compare(date_validare,m_pem);

%identificare folosind n4sid
m_n4sid = n4sid(date_identificare,1:10);
%validare
figure(),resid(date_validare,m_n4sid,4);
figure(),compare(date_validare,m_n4sid);

m_n4sid_pem = pem(date_identificare,m_n4sid);
%validare
figure(),resid(date_validare,m_n4sid_pem,4);
figure(),compare(date_validare,m_n4sid_pem);

figure(),compare(date_validare,m_armax,m_oe,m_pem,m_n4sid);