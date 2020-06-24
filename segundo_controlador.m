s=tf('s');
G=1/(s-1);
step(G)
T=0.5/(0.5*s+1);
step(T)
roots([0.5 1])
rlocus(T);
C=(s-1)/(s+1);
t=feedback(C*G,1);
step(t)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plot(Datos.time,Datos.signals.values(:,1),'r')
%eje x de los datos, eje y hasta values, todas las filas de la PRIMERA
%columna
hold on
plot(Datos.time,Datos.signals.values(:,2),'b')
%eje x de los datos, eje y hasta values, todas las filas de la SEGUNDA
%columna
xlabel('Time [s]')
grid on