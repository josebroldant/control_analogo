%SISTEMA TIPO 0
s=tf('s');
G=16/(s^2+8*s+32);
step(G)

%SISTEMA TIPO 1
s=tf('s');
G1=1/(8*s^2+16*s);
step(G1)

%SISTEMA TIPO 2
s=tf('s');
G2=4/(s^3+2*s^2);
step(G2)