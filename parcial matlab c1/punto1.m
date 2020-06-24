%PUNTO 1
K=4; 
T=4; 

%Definir func. transf.

s=tf('s');%operador laplaciano
G=K/(T*s+1);
step(G);
grid on

t= 0:0.001:40;
y=K*(1-(exp(t./(-T))));
plot(t,y)
xlabel('Tiempo [s]')
ylabel('Amplitud')
grid on