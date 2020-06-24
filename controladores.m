%CONTROLADOR PROPORCIONAL
%TIPO 1
s=tf('s');
H=5/(s*(s+10));
bode(H)
step(feedback(H,1),'k')
hold on
step(feedback(10*H,1),'r')
%TIPO 0
Kp=10;
G=5/(s+10);
bode(G)
step(feedback(G,1),'b')%referencia
hold on
step(feedback(Kp*G,1),'g')

%CONTROLADOR INTEGRAL
Ki=10;
s=tf('s');
G=5/(s+10);
step(feedback(G,1),'c')%referencia
hold on
step(feedback(Ki*G*(1/s),1),'y')

%CONTROLADOR PROPORCIONAL INTEGRAL
Kp=10;
Ki=10;
cte=Kp+(Ki/s);
step(feedback(G,1),'c')%referencia
hold on
step(feedback(G*cte,1),'g')

%CONTROLADOR DERIVATIVO
Kd=10;
step(feedback(G,1),'b')%referencia
hold on
step(feedback(Kd*s*G,1),'g')

%CONTROLADOR PROPORCIONAL DERIVATIVO
Kp=10;
Kd=10;
cte=Kp+(Kd*s);
step(feedback(G,1),'c')%referencia
hold on
step(feedback(G*cte,1),'g')

%CONTROLADOR PID
Kp=10;
Ki=10;
Kd=10;
cte=Kp+(Ki/s)+(Kd*s);
step(feedback(G,1),'c')%referencia
hold on
step(feedback(G*cte,1),'g')

%TESTING
step(feedback(G,1),'c')%referencia
hold on
step(feedback(Kp*G,1),'m')%proporcional
hold on
step(feedback((Ki/s)*G,1),'y')%integral
hold on
step(feedback((Ki/s)*Kp*G,1),'k')%proporcional integral
hold on
step(feedback(Kd*s*G,1),'r')%derivativo
hold on
step(feedback(Kp*Kd*s*G,1),'g')%proporcional derivativo
hold on
step(feedback((Ki/s)*Kp*Kd*s*G,1),'b')%pid



