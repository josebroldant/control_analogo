cap=0.1;%[H]
l=0.001;%[F]
r=2000;%[Ohms]
A=[0 -1/cap;1/l -r/l];
B=[1/cap 0];
C=[0 r];
D=0;
