function theta = myARX(nA,nB,nd,u,y,delta,lambda1,lambda2,lambda0)
    F = 1/delta*eye(nA+nB); %matricea amplificarilor
    theta = rand(nA+nB,1); %vectorul parametrilor
    %primul vector al masuratorilor
    u_extins = [zeros(nB+nd-1,1);u];
    y_extins = [zeros(nA,1);y];
    phi = [-fliplr(y_extins(1:nA));fliplr(u_extins(1:nB))];
    for n=1:length(y)-1
        num = lambda1/lambda2+phi'*F*phi;
        eps_ = (y(n+1)-theta'*phi)/num;
        F = 1/lambda1*(F-F*(phi*phi')*F/num);
        theta = theta+F*phi*eps_;
        %construire phi urmator
        phi = [-fliplr(y_extins(n+1:n+nA));fliplr(u_extins(n+1:n+nB))];
        lambda1 = lambda0*lambda1+1-lambda0;
    end
end