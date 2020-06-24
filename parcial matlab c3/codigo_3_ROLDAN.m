s=tf('s');
G=39/(s^2+95*s+49);
m=[1 95 49];
roots(m)
cont=ctrb(Ft)
observa=obsv(Ft)
rlocus(G)
step(G)
Kpej=3;
Ft=ss(G);
Kpexp=-0.6;