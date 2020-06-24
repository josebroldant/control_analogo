s=tf('s');
Ta=3/(s^2+3.2*s+3);
s=tf('s');
Tb=(-1.8*(s-1))/(s^2+5.2*s+5);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
t=0:0.1:10;
step(Ta,t)%Respuesta al escalon
step(Ta/s,t)%Respuesta a la rampa
impulse(Ta)%Respuesta a la parabola
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plot(step_a.time,step_a.data(:,1),'r')
xlabel('Time')
ylabel('Amplitude')
hold on
plot(step_a.time,step_a.data(:,2),'b')
xlabel('Time')
ylabel('Amplitude')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plot(ramp_a.time,ramp_a.data(:,1),'r')
xlabel('Time')
ylabel('Amplitude')
hold on
plot(ramp_a.time,ramp_a.data(:,2),'b')
xlabel('Time')
ylabel('Amplitude')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plot(parab_a.time,parab_a.data(:,1),'r')
xlabel('Time')
ylabel('Amplitude')
hold on
plot(parab_a.time,parab_a.data(:,2),'b')
xlabel('Time')
ylabel('Amplitude')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
step(Tb,t)%Respuesta al escalon
step(Tb / s)%Respuesta a la rampa
impulse(Tb)%Respuesta a la parabola
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plot(step_b.time,step_b.data(:,1),'r')
xlabel('Time')
ylabel('Amplitude')
hold on
plot(step_b.time,step_b.data(:,2),'b')
xlabel('Time')
ylabel('Amplitude')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plot(ramp_b.time,ramp_b.data(:,1),'r')
xlabel('Time')
ylabel('Amplitude')
hold on
plot(ramp_b.time,ramp_b.data(:,2),'b')
xlabel('Time')
ylabel('Amplitude')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plot(parab_b.time,parab_b.data(:,1),'r')
xlabel('Time')
ylabel('Amplitude')
hold on
plot(parab_b.time,parab_b.data(:,2),'b')
xlabel('Time')
ylabel('Amplitude')