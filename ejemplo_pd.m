s=tf('s');
G=4500/(s*(s+361.2));
%se quiere que ess <= 0.000433 para rampa, tr <= 0.005 para step
%tss <= 0.005 para step, overshoot <= 5% para step
step(G)
hold on
t=feedback(G,1);
step(t)
C=157.58+0.27*s;%controlador pd hallado
t1=feedback(C*G,1);
step(t1)
%al modificar E y wn se llego que kp=0.27 y kd=157.58
%debido a que el %os daba 13.7% se debe llegar al 5% o
%lo mas cerca posible de 5