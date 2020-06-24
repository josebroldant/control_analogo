%CONTROLADOR PROPORCIONAL
%TIPO 1
s=tf('s');
H=5/(s*(s+10));
bode(H)
step(feedback(H,1),'k')
hold on
step(feedback(10*H,1),'r')
%TIPO 0
G=5/(s+10);
bode(G)
step(feedback(G,1),'b')
hold on
step(feedback(10*G,1),'g')

%CONTROLADOR INTEGRAL
Ki=10;
Kii=100;
G=5/(s+10);
bode(G)
step(feedback(G,1),'b')
hold on
step(feedback(Ki*G*(1/s),1),'g')
hold on
step(feedback(Kii*G*(1/s),1),'r')