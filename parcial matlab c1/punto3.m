c=2;
R=10;
L=1;
A=[-1/R*c 1/c; -1/L 0];
B=[0 ; 1/L];
C=[-1 0];
D=1;
sys=ss(A,B,C,D);
tf(sys);
step(tf(sys));
grid on
Co=ctrb(sys);
Ob=obsv(sys);
rank(Co)
rank(Ob)