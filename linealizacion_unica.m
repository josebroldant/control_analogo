M = 3;
g = 9.8;
L=0.3;
theta = -pi:0.1:pi;
T=M*g*L*cos(theta);
plot(theta,T)
grid on
xlabel('Theta [rad]')
ylabel('Theta [N*M]')
hold on 
plot(theta,-M*g*L*theta+M*g*L*pi/2,'r')
ylim([-15 15])
plot(theta,M*g*L*theta+M*g*L*pi/2,'k')
grid on
ylim([-15 15])
%linealizacion y=f(xgorrito)+df/dx(evaluada en xgorrito)*(x(t)-xgorrito)
%derv cos es -sin
%ctrb y obsv