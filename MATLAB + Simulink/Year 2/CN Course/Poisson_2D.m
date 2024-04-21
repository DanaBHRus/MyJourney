N=10;
dx=1/N;
A_diag=eye(N-1)*(-4/dx^2);
A_diag=A_diag+diag(ones(N-2,1),1)/dx^2;
A_diag=A_diag+diag(ones(N-2,1),-1)/dx^2;
A_off=eye(N-1)/dx^2;
A=sparse((N-1)*(N-1),(N-1)*(N-1));
for i=1:N-1
    A((i-1)*(N-1)+1:(i-1)*(N-1)+(N-1),(i-1)*(N-1)+1:(i-1)*(N-1)+(N-1))=A_diag;
end
for i=2:N-1
    A((i-2)*(N-1)+1:(i-2)*(N-1)+(N-1),(i-1)*(N-1)+1:(i-1)*(N-1)+(N-1))=A_off;
    A((i-1)*(N-1)+1:(i-1)*(N-1)+(N-1),(i-2)*(N-1)+1:(i-2)*(N-1)+(N-1))=A_off;
end
f=ones((N-1)*(N-1),1);
f(1:N-1)=f(1:N-1)+1/dx^2; %u0j=1;
u=-A\f;
u=reshape(u,N-1,N-1);
surf(u)