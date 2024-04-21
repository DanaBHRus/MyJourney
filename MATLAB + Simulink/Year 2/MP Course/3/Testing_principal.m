clf
%evidentiez puncte echilibru
[~,x]=ode23('Testing',[0,0.5],[0,0]);
plot(x(:,1),x(:,2),'rx');
hold on
[~,x]=ode45('Testing',[0,10],[1,1]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode45('Testing',[0,10],[0.5,0.5]);
plot(x(:,1),x(:,2),'b');
[~,x]=ode45('Testing',[0,10],[0.75,0.75]);
plot(x(:,1),x(:,2),'b');
hold off
