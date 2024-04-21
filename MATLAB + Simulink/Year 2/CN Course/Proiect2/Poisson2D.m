N=100;
dx=1/N;
Adiag=eye(N-1)*(-4/dx^2);
Adiag=Adiag+diag(ones(N-2,1),1)/dx^2;
Adiag=Adiag+diag(ones(N-2,1),-1)/dx^2;
Aoff=eye(N-1)/dx^2;
A=sparse((N-1)*(N-1),(N-1)*(N-1));
for i=1:N-1
    A((i-1)*(N-1)+1:(i-1)*(N-1)+(N-1),(i-1)*(N-1)+1:(i-1)*(N-1)+(N-1))=Adiag;
end
for i=2:N-1
    A((i-2)*(N-1)+1:(i-2)*(N-1)+(N-1),(i-1)*(N-1)+1:(i-1)*(N-1)+(N-1))=Aoff;
    A((i-1)*(N-1)+1:(i-1)*(N-1)+(N-1),(i-2)*(N-1)+1:(i-2)*(N-1)+(N-1))=Aoff;
end
f=ones((N-1)*(N-1),1);
u=-A\f;
u=reshape(u,N-1,N-1);
surf(u);
figure()
f(1:N-1)=f(1:N-1)+1/dx^2;
u=-A\f;
u=reshape(u,N-1,N-1);
surf(u);
figure()
f(1:N-1:end)=f(1:N-1:end)+1/dx^2;
u=-A\f;
u=reshape(u,N-1,N-1);
surf(u);