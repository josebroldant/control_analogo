s=tf('s');
Kp=-0.5;%Kp menor a -14/40
G=40*Kp/(s^2+3*s+14+40*Kp);
t=0:0.1:10;
step(G,t)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
plot(Controler.time,Controler.data(:,1),'r')
xlabel('Time')
ylabel('Amplitude')
hold on
plot(Controler.time,Controler.data(:,2),'b')
xlabel('Time')
ylabel('Amplitude')