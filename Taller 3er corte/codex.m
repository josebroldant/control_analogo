s=tf('s');
G=0.025/(s^2+2.43*s+1.25);
step(G)
G1=feedback(G,1);
step(G1)
roots([1 0.1632 0.0289])

%CONTROLADOR PID
Kp=-43.524;
Ki=0.944;
Kd=-58.032;
cte=Kp+(Ki/s)+(Kd*s);
step(G,'r')
hold on
step(feedback(G,1),'g')
hold on
step(feedback(G*cte,1),'b')
