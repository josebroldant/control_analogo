
a= [4500]; 
b= [1 361.2 0];
kp=222.22;
kd=0.275;

T =  (4500*(kp+kd*s))/(s^2+(s*(361.2+kd*4500))+(kp*4500));
step(T)
s =tf('s')
G2 = 0.8/((30*s+1)*(13*s+1)*(3*s+1));
step(G2)

kp1 = 0.655;
ki1 = 0.891;
kd1 = 2.33;

kp1 = 0.8;
ki1 = 0.891;
kd1 = 2.33;

kp1 = 0.4;
ki1 = 0.891;
kd1 = 2.33;

kp1 = 0.655;
ki1 = 0.9;
kd1 = 2.33;

kp1 = 0.655;
ki1 = 0.6;
kd1 = 2.33;

kp1 = 0.655;
ki1 = 0.891;
kd1 = 2.5;

kp1 = 0.655;
ki1 = 0.891;
kd1 = 1.9;

kp1 = 0.655;
ki1 = 0.891;
kd1 = 2.33;

Ca=kp1 + ki1/s + kd1*s;
Ga = 2/(s^2 + 0.03*s +2.25);
T1=feedback(Ca*Ga,1);
step(T1)
grid on
hold on
kp2 = 4;
ki2 = 0.891;
kd2 = 2.33;
Cb=kp2 + ki2/s + kd2*s;
Gb = 2/(s^2 + 0.03*s +2.25);
T2=feedback(Cb*Gb,1);
step(T2)
grid on

G1 = 2/(s^2+0.03*s+2.25);
step (G1)
G =4500/(s*(s+361.2));
b = [0 2 3 7];
a = [1 0.4 1];
c=[1 2 5];
d=[6 4 5];
[a,b,c,d] = tf2ss(a,b);
step(G)

p = [1 0.7993 0.4569]
r = roots(p);


Ft=ss(a,b,c,d);
Contrl = ctrb(Ft);
Obsrv = obsv(Ft);
rank = (Contrl);
rank = (Obsrv); 
%Se determina si el sistema es observable y controlable.

log(0.05)