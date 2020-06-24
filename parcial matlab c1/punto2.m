%PUNTO 2
Wn=50; 
E=0.3;
s=tf('s'); 
G=(Wn^2)/(s^2+2*s*E*Wn+Wn^2); % Se define la funcion de transferencia G(s)
step(G)
grid on

t= 0:0.001:0.35;
y=1-(1/(1-E^2)^(1/2))*((exp(t*Wn*(-E))).*sin(t*Wn*(1-E^2)^(1/2)+acos(E)));
plot(t,y)
xlabel('Tiempo [s]')
ylabel('Amplitud')
grid on