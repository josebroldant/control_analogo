%Definir func. transf.
%Se espera una señal acotada a la respuesta al impulso
%En un marginal se puede tener entrada acotada pero no la salida
%debido a que no es BIBO estable

%BIBO
s=tf('s');%operador laplaciano
G=20/((s+1)*(s+2)*(s+3));
step(G);
grid on
rlocus(G)%Muestra los polos y zeros

%MARGINAL
s=tf('s');%operador laplaciano
Y=50/((s+3)*(s^2+5));
step(Y);
roots([1 3 5 15])%Muestra las raices de los terminos, parte real e imaginaria(POLOS)
rlocus(Y)

%MARGINAL
s=tf('s');%operador laplaciano
Z=50/((s^2+3)*(s^2+5));
step(Z);
rlocus(Z)

%MARGINAL
s=tf('s');%operador laplaciano
A=50/((s^2+3)^2*(s^2+5));
step(A)
rlocus(A)

%INESTABLE
s=tf('s');%operador laplaciano
G=20/((s+1)*(s+2)*(s-3));%Inestable debido a s-3 
step(G);
grid on
rlocus(G)%Muestra los polos y zeros

s=tf('s');%operador laplaciano
B=(4*K)/(s^3+3*s^2+2*s+4*K);

s=tf('s');%operador laplaciano
P=1/(s^4+5*s^3+3*s^2+s+2);
rlocus(P)

s=tf('s');%operador laplaciano
H=1/(s^4+s^3+2*s^2+2*s+3);
roots([1 1 2 2 3])