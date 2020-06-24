M=1;
L=1;
cd=0.2;
rho=1;
[Theta,V]=meshgrid(-2*pi:0.1:2*pi,-2:0.1:2);
A=2*cos(Theta)./M-(cd*V.^2*L^2*rho)./(2*M);
figure
surface(Theta,V,A)
view(3)
hold on
xlabel('Theta')
ylabel('valocidad')
zlabel('aceleracion')
grid on
Aaprox=-2/M*(Theta-pi/2);
%figure
hold on
surface(Theta,V,Aaprox)
view(3)
zlim([-5,5])
