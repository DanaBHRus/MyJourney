a=3*pi;
b=pi;
nx=100;
ny=50;
dx=a/nx;
dy=b/ny;
x=0:dx:a;
y=0:dy:b;
u=zeros(ny+1,nx+1);
for i=1:ny+1
    for j=1:nx+1
        u(i,j)=sin(x(j))./sin(a).*sinh(y(i))./sinh(b);
    end
end
maxu=max(u,[],'all');
nu=u/maxu;
contourf(nu,200,'linecolor','non')
title('Solutie analitica.')
xlabel('x'),ylabel('y')
colormap(jet(256))
colorbar
clim([-1,1])

co=1/(2*(dx^2+dy^2));
U=zeros(ny+1,nx+1);
%Conditions with Dirichlet
U(1,:)=0;
U(ny+1,:)=sin(x)/sin(a);
U(:,1)=0;
U(:,nx+1)=sinh(y)/sinh(b);
%10 interatii
interNumber=10;
for k=1:interNumber
    for i=2:ny
        for j=2:nx
            U(i,j)=co*(dx^2*(U(i+1,j)+U(i-1,j))+dy^2*(U(i,j+1)+U(i,j-1)));
        end
    end
end
maxU=max(U,[],'all');
nU=U/maxU;
figure()
contourf(nU,200,'linecolor','non')
title('Solutie numerica 10 iteratii')
xlabel('x'),ylabel('y')
colormap(jet(256))
colorbar
clim([-1,1])
%errors
r=nu-nU;
figure()
contourf(r,200,'linecolor','non')
title('Eroare la 10 iteratii')
xlabel('x'),ylabel('y')
colormap(jet(256))
colorbar
clim([-1,1])
%100 de interatii
interNumber=100;
for k=1:interNumber
    for i=2:ny
        for j=2:nx
            U(i,j)=co*(dx^2*(U(i+1,j)+U(i-1,j))+dy^2*(U(i,j+1)+U(i,j-1)));
        end
    end
end
maxU=max(U,[],'all');
nU=U/maxU;
figure()
contourf(nU,200,'linecolor','non')
title('Solutie numerica 100 iteratii')
xlabel('x'),ylabel('y')
colormap(jet(256))
colorbar
clim([-1,1])
%errors
r=nu-nU;
figure()
contourf(r,200,'linecolor','non')
title('Eroare la 100 de iteratii')
xlabel('x'),ylabel('y')
colormap(jet(256))
colorbar
clim([-1,1])
%1000 de iteratii 
interNumber=1000;
for k=1:interNumber
    for i=2:ny
        for j=2:nx
            U(i,j)=co*(dx^2*(U(i+1,j)+U(i-1,j))+dy^2*(U(i,j+1)+U(i,j-1)));
        end
    end
end
maxU=max(U,[],'all');
nU=U/maxU;
figure()
contourf(nU,200,'linecolor','non')
title('Solutie numerica 1000 iteratii')
xlabel('x'),ylabel('y')
colormap(jet(256))
colorbar
clim([-1,1])
%errors
r=nu-nU;
figure()
contourf(r,200,'linecolor','non')
title('Eroare la 1000 de iteratii')
xlabel('x'),ylabel('y')
colormap(jet(256))
colorbar
clim([-1,1])