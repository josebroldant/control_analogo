E=0.5;
Wn=50;

s=tf('s');%operador laplaciano
G=Wn^2/(s^2+2*E*Wn*s+Wn^2);
step(2.5*G);

