%Funcion de transferencia
s=tf('s');%operador laplaciano
G=16/(s^2+s*4+16);
step(G);