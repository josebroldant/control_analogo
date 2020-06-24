s=tf('s');
G=2/(s^2+0.03*s+2.25);
%se quiere que ess = 0 para step,
%tss <= 10 para step, overshoot <= 10% para step
step(G)
hold on
t=feedback(G,1);
step(t)
C=0.625+2.375*s+(0.645/s);%controlador pid hallado
t1=feedback(C*G,1);
step(t1)
%al modificar E y wn se llego que kp=0.625, kd=2.375, ki=0.645
roots([1 0.798 0.3249])
rlocus(s^2+0.798*s+0.3249)