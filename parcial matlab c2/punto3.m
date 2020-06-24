s=tf('s');
G=40/(s^2+3*s+14);
C=(14.51*s^2+43.53*s+203.14)/(40*s^2+64*s);
t=feedback(C*G,1);
step(t)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plot(Controlador.time,Controlador.data(:,1),'r')
xlabel('Time')
ylabel('Amplitude')
hold on
plot(Controlador.time,Controlador.data(:,2),'b')
xlabel('Time')
ylabel('Amplitude')