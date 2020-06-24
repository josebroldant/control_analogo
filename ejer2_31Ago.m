M=2; %[Kg]
B1=0.1; %[N*s/m]
K=0.2; %[N/m]

%Definir func. transf.
%Metodo No. 1
s=tf('s');%operador laplaciano
G=(1/M)/(s^2+B1/M*s+K/M);
step(G);
grid on

%Metodo No. 2
G1=tf([1/M],[1 B1/M K/M]);
hold on
step(G1,'--r');

%Representacion en V.E
%Metodo No. 1
A=[-B1/M -K/M;1 0];%Matriz del sistema
B=[1/M ; 0];%Matriz de entrada, dejar espacio pq es vertical la matriz
C=[0 1];%Matriz de salida
D=0;%Matriz de adelanto
[num,den]=ss2tf(A,B,C,D);
G2=tf([num,den]);
step(G2,'--r');

%Metodo No. 2
G3=C*inv(s*eye(2)-A)*B+D;
hold on
step(G3,'.-.k');
