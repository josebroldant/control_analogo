s=tf('s');
G=1/(s+0.1);
step(G)
H=0.9/(s+1);
T=feedback(G,H);
step(T)