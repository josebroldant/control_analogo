%PRIMERA PARTE
s=tf('s');
R=0.01;
C=5000;
L=1;

a = [0 -1/C; 1/L -R/L];
b = [1/C; 0];
c = [0 R];
d = 0;
[den,num] = ss2tf(a,b,c,d);

G=0.000002/(s^2+0.01*s+0.0002);
step(G)
%ESTADO ACTUAL
plot(simout.time(:,1),simout.Data(:,1),'r')
hold on
%HACE 15 AÑOS
plot(Calefactor_Black_and_Decker_Diciembre_2017.time,Calefactor_Black_and_Decker_Diciembre_2017.signals.values,'b')

%SEGUNDA PARTE
G1=0.0016/(s^2+0.024*s+0.0016);
step(G1)
rlocus(G1)
roots([1 0.024 0.0016])

%TERCERA PARTE

%CONTROLADOR PID
Kp=2390;
Ki=96;
Kd=67000;
cte=Kp+(Ki/s)+(Kd*s);
step(feedback(G*cte,1),'b')
plot(simout1.time(:,1),simout1.Data(:,1),'r')

